using System.Globalization;
using System.IO;
using System.Text;
using System.Text.Json;
using System.Xml;

namespace CODE.Framework.Wpf.Utilities
{
    /// <summary>
    /// This class provides useful helper functionality to deal with JSON strings
    /// </summary>
    public static class JsonHelper
    {
        /// <summary>
        /// Returns a name/value pair in JSON format
        /// </summary>
        /// <param name="elementName">Name of the element.</param>
        /// <param name="value">The value.</param>
        /// <returns>JSON snippet</returns>
        public static string GetJsonNameValuePair(string elementName, object value)
        {
            try
            {
                return $"\"{elementName}\": " + JsonSerializer.Serialize(value);
            }
            catch (Exception ex)
            {
                LoggingMediator.Log(ex);
                return string.Empty;
            }
        }

        /// <summary>
        /// Serializes to REST JSON.
        /// </summary>
        /// <param name="objectToSerialize">The object to serialize.</param>
        /// <param name="forceCamelCase">If set to true, the result will be forced to camelCase property names, regardless of the actual property names.</param>
        /// <returns>
        /// JSON string
        /// </returns>
        public static string SerializeToRestJson(object objectToSerialize, bool forceCamelCase = false)
        {
            try
            {
                if (!forceCamelCase)
                    return JsonSerializer.Serialize(objectToSerialize);
                return JsonSerializer.Serialize(objectToSerialize, new JsonSerializerOptions { PropertyNamingPolicy = JsonNamingPolicy.CamelCase });
            }
            catch (Exception ex)
            {
                LoggingMediator.Log(ex);
                return string.Empty;
            }
        }

        /// <summary>
        /// Deserializes from REST JSON.
        /// </summary>
        /// <typeparam name="T">Type to return</typeparam>
        /// <param name="json">The json.</param>
        /// <returns>Deserialized object</returns>
        //public static T DeserializeFromRestJson<T>(string json, object stateObject) where T : class, new()
        public static T DeserializeFromRestJson<T>(string json) where T : class, new()
        {
            try
            {
                return JsonSerializer.Deserialize<T>(json, new JsonSerializerOptions { AllowTrailingCommas = true, PropertyNameCaseInsensitive = true });
            }
            catch (Exception ex)
            {
                LoggingMediator.Log(ex);
                return null;
            }
        }

        /// <summary>
        /// Deserializes from REST JSON.
        /// </summary>
        /// <param name="json">The json.</param>
        /// <param name="returnType">Type of the return.</param>
        /// <returns>Deserialized object</returns>
        public static object DeserializeFromRestJson(string json, Type returnType)
        {
            try
            {
                return JsonSerializer.Deserialize(json, returnType, new JsonSerializerOptions { AllowTrailingCommas = true, PropertyNameCaseInsensitive = true });
            }
            catch (Exception ex)
            {
                LoggingMediator.Log(ex);
                return null;
            }
        }

        /// <summary>
        /// Formats the provided JSON string (adds line feeds, indents, ...)
        /// </summary>
        /// <param name="json">The original JSON string.</param>
        /// <param name="indentSpaces">Defines how many spaces are to be used for indentation.</param>
        /// <returns>Formatted JSON string</returns>
        public static string Format(string json, int indentSpaces = 2)
        {
            var jsonBytes = Encoding.UTF8.GetBytes(json);
            var sb = new StringBuilder();

            var currentIndentLevel = 0;
            var inQuotes = false;
            var lastQuoteChar = ' ';
            foreach (var jsonByte in jsonBytes)
            {
                switch (jsonByte)
                {
                    case (byte)',':
                        sb.Append(',');
                        if (!inQuotes)
                        {
                            sb.AppendLine();
                            sb.Append(StringHelper.Replicate(" ", currentIndentLevel * indentSpaces));
                        }
                        break;
                    case (byte)'"':
                        if (!inQuotes)
                        {
                            lastQuoteChar = '"';
                            inQuotes = true;
                        }
                        else if (lastQuoteChar == '"')
                            inQuotes = false;
                        sb.Append('"');
                        break;
                    case (byte)'\'':
                        if (!inQuotes)
                        {
                            lastQuoteChar = '\'';
                            inQuotes = true;
                        }
                        else if (lastQuoteChar == '\'')
                            inQuotes = false;
                        sb.Append('\'');
                        break;
                    case (byte)'{':
                        sb.AppendLine("{");
                        currentIndentLevel++;
                        sb.Append(StringHelper.Replicate(" ", currentIndentLevel * indentSpaces));
                        break;
                    case (byte)'}':
                        sb.AppendLine();
                        currentIndentLevel--;
                        sb.Append(StringHelper.Replicate(" ", currentIndentLevel * indentSpaces));
                        sb.Append('}');
                        break;
                    default:
                        sb.Append((char)jsonByte);
                        break;
                }
            }

            return sb.ToString();
        }

        /// <summary>
        /// Performs a quick element by element parse of a flat JSON string 
        /// and invokes the callback for each value found.
        /// </summary>
        /// <param name="json">The JSON string that is to be parsed.</param>
        /// <param name="callback">The callback that gets called for each name/value pair found.</param>
        /// <example>
        /// var json = "{ 'value': 'x', 'value2': 'y' }";
        /// JsonHelper.QuickParse(json, (n, v) => {
        ///     Console.WriteLine("Name: " + n);
        ///     Console.WriteLine("Value: " + v);
        /// });
        /// </example>
        public static void QuickParse(string json, Action<string, string> callback)
        {
            if (string.IsNullOrEmpty(json)) return;
            var dictionary = JsonSerializer.Deserialize<Dictionary<string, string>>(json);
            foreach (var key in dictionary.Keys)
                callback(key, dictionary[key]);
        }
    }

    /// <summary>
    /// This class helps in manually building simple JSON
    /// </summary>
    public class JsonBuilder
    {
        private readonly StringBuilder _sb;
        private bool _firstElement = true;

        /// <summary>
        /// Initializes a new instance of the <see cref="JsonBuilder"/> class.
        /// </summary>
        public JsonBuilder() => _sb = new StringBuilder();

        /// <summary>
        /// Appends the specified name/value pair.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <param name="value">The value.</param>
        public void Append(string name, object value)
        {
            if (!_firstElement) _sb.Append(",");
            _sb.Append(JsonHelper.GetJsonNameValuePair(name, value));
            _firstElement = false;
        }

        /// <summary>
        /// Returns a string that represents this instance.
        /// </summary>
        /// <returns>A string that represents this instance.</returns>
        public override string ToString()
        {
            var json = "{" + _sb + "}";
            json = JsonHelper.Format(json);
            return json;
        }
    }

    internal static class DateTimeUtils
    {
        internal static readonly long InitialJavaScriptDateTicks = 621355968000000000;
        private const string IsoDateFormat = "yyyy-MM-ddTHH:mm:ss.FFFFFFFK";

        private const int DaysPer100Years = 36524;
        private const int DaysPer400Years = 146097;
        private const int DaysPer4Years = 1461;
        private const int DaysPerYear = 365;
        private const long TicksPerDay = 864000000000L;
        private static readonly int[] DaysToMonth365;
        private static readonly int[] DaysToMonth366;

        static DateTimeUtils()
        {
            DaysToMonth365 = new[] { 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 };
            DaysToMonth366 = new[] { 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 };
        }

        public static TimeSpan GetUtcOffset(this DateTime d) => TimeZone.CurrentTimeZone.GetUtcOffset(d);

        public static XmlDateTimeSerializationMode ToSerializationMode(DateTimeKind kind)
        {
            switch (kind)
            {
                case DateTimeKind.Local:
                    return XmlDateTimeSerializationMode.Local;
                case DateTimeKind.Unspecified:
                    return XmlDateTimeSerializationMode.Unspecified;
                case DateTimeKind.Utc:
                    return XmlDateTimeSerializationMode.Utc;
                default:
                    throw CreateArgumentOutOfRangeException(nameof(kind), kind, "Unexpected DateTimeKind value.");
            }
        }

        public static string ToDateTimeFormat(DateTimeKind kind)
        {
            switch (kind)
            {
                case DateTimeKind.Local:
                    return IsoDateFormat;
                case DateTimeKind.Unspecified:
                    return "yyyy-MM-ddTHH:mm:ss.FFFFFFF";
                case DateTimeKind.Utc:
                    return "yyyy-MM-ddTHH:mm:ss.FFFFFFFZ";
                default:
                    throw CreateArgumentOutOfRangeException(nameof(kind), kind, "Unexpected DateTimeKind value.");
            }
        }

        public static ArgumentOutOfRangeException CreateArgumentOutOfRangeException(string paramName, object actualValue, string message)
        {
            var newMessage = message + Environment.NewLine + @"Actual value was {0}.".FormatWith(CultureInfo.InvariantCulture, actualValue);
            return new ArgumentOutOfRangeException(paramName, newMessage);
        }

        private static string FormatWith(this string format, IFormatProvider provider, params object[] args)
        {
            // leave this a private to force code to use an explicit overload
            // avoids stack memory being reserved for the object array
            if (format == null) throw new ArgumentNullException("format");
            return string.Format(provider, format, args);
        }

        internal static DateTime EnsureDateTime(DateTime value, DateTimeZoneHandling timeZone)
        {
            switch (timeZone)
            {
                case DateTimeZoneHandling.Local:
                    value = SwitchToLocalTime(value);
                    break;
                case DateTimeZoneHandling.Utc:
                    value = SwitchToUtcTime(value);
                    break;
                case DateTimeZoneHandling.Unspecified:
                    value = new DateTime(value.Ticks, DateTimeKind.Unspecified);
                    break;
                case DateTimeZoneHandling.RoundtripKind:
                    break;
                default:
                    throw new ArgumentException("Invalid date time handling value.");
            }

            return value;
        }

        private static DateTime SwitchToLocalTime(DateTime value)
        {
            switch (value.Kind)
            {
                case DateTimeKind.Unspecified:
                    return new DateTime(value.Ticks, DateTimeKind.Local);

                case DateTimeKind.Utc:
                    return value.ToLocalTime();

                case DateTimeKind.Local:
                    return value;
            }
            return value;
        }

        private static DateTime SwitchToUtcTime(DateTime value)
        {
            switch (value.Kind)
            {
                case DateTimeKind.Unspecified:
                    return new DateTime(value.Ticks, DateTimeKind.Utc);

                case DateTimeKind.Utc:
                    return value;

                case DateTimeKind.Local:
                    return value.ToUniversalTime();
            }
            return value;
        }

        private static long ToUniversalTicks(DateTime dateTime)
        {
            if (dateTime.Kind == DateTimeKind.Utc)
                return dateTime.Ticks;

            return ToUniversalTicks(dateTime, dateTime.GetUtcOffset());
        }

        private static long ToUniversalTicks(DateTime dateTime, TimeSpan offset)
        {
            // special case min and max value
            // they never have a timezone appended to avoid issues
            if (dateTime.Kind == DateTimeKind.Utc || dateTime == DateTime.MaxValue || dateTime == DateTime.MinValue)
                return dateTime.Ticks;

            var ticks = dateTime.Ticks - offset.Ticks;
            if (ticks > 3155378975999999999L)
                return 3155378975999999999L;

            if (ticks < 0L)
                return 0L;

            return ticks;
        }

        internal static long ConvertDateTimeToJavaScriptTicks(DateTime dateTime, TimeSpan offset) => UniversialTicksToJavaScriptTicks(ToUniversalTicks(dateTime, offset));

        internal static long ConvertDateTimeToJavaScriptTicks(DateTime dateTime) => ConvertDateTimeToJavaScriptTicks(dateTime, true);

        internal static long ConvertDateTimeToJavaScriptTicks(DateTime dateTime, bool convertToUtc) => UniversialTicksToJavaScriptTicks(convertToUtc ? ToUniversalTicks(dateTime) : dateTime.Ticks);

        private static long UniversialTicksToJavaScriptTicks(long universialTicks) => (universialTicks - InitialJavaScriptDateTicks) / 10000;

        internal static DateTime ConvertJavaScriptTicksToDateTime(long javaScriptTicks) => new DateTime(javaScriptTicks * 10000 + InitialJavaScriptDateTicks, DateTimeKind.Utc);

        #region Parse

        internal static bool TryParseDateTimeIso(StringReference text, DateTimeZoneHandling dateTimeZoneHandling, out DateTime dt)
        {
            var dateTimeParser = new DateTimeParser();
            if (!dateTimeParser.Parse(text.Chars, text.StartIndex, text.Length))
            {
                dt = default(DateTime);
                return false;
            }

            var d = CreateDateTime(dateTimeParser);

            long ticks;

            switch (dateTimeParser.Zone)
            {
                case ParserTimeZone.Utc:
                    d = new DateTime(d.Ticks, DateTimeKind.Utc);
                    break;

                case ParserTimeZone.LocalWestOfUtc:
                    {
                        var offset = new TimeSpan(dateTimeParser.ZoneHour, dateTimeParser.ZoneMinute, 0);
                        ticks = d.Ticks + offset.Ticks;
                        if (ticks <= DateTime.MaxValue.Ticks)
                        {
                            d = new DateTime(ticks, DateTimeKind.Utc).ToLocalTime();
                        }
                        else
                        {
                            ticks += d.GetUtcOffset().Ticks;
                            if (ticks > DateTime.MaxValue.Ticks)
                                ticks = DateTime.MaxValue.Ticks;

                            d = new DateTime(ticks, DateTimeKind.Local);
                        }
                        break;
                    }
                case ParserTimeZone.LocalEastOfUtc:
                    {
                        var offset = new TimeSpan(dateTimeParser.ZoneHour, dateTimeParser.ZoneMinute, 0);
                        ticks = d.Ticks - offset.Ticks;
                        if (ticks >= DateTime.MinValue.Ticks)
                        {
                            d = new DateTime(ticks, DateTimeKind.Utc).ToLocalTime();
                        }
                        else
                        {
                            ticks += d.GetUtcOffset().Ticks;
                            if (ticks < DateTime.MinValue.Ticks)
                                ticks = DateTime.MinValue.Ticks;

                            d = new DateTime(ticks, DateTimeKind.Local);
                        }
                        break;
                    }
            }

            dt = EnsureDateTime(d, dateTimeZoneHandling);
            return true;
        }

        internal static bool TryParseDateTimeOffsetIso(StringReference text, out DateTimeOffset dt)
        {
            DateTimeParser dateTimeParser = new DateTimeParser();
            if (!dateTimeParser.Parse(text.Chars, text.StartIndex, text.Length))
            {
                dt = default(DateTimeOffset);
                return false;
            }

            DateTime d = CreateDateTime(dateTimeParser);

            TimeSpan offset;

            switch (dateTimeParser.Zone)
            {
                case ParserTimeZone.Utc:
                    offset = new TimeSpan(0L);
                    break;
                case ParserTimeZone.LocalWestOfUtc:
                    offset = new TimeSpan(-dateTimeParser.ZoneHour, -dateTimeParser.ZoneMinute, 0);
                    break;
                case ParserTimeZone.LocalEastOfUtc:
                    offset = new TimeSpan(dateTimeParser.ZoneHour, dateTimeParser.ZoneMinute, 0);
                    break;
                default:
                    offset = TimeZoneInfo.Local.GetUtcOffset(d);
                    break;
            }

            long ticks = d.Ticks - offset.Ticks;
            if (ticks < 0 || ticks > 3155378975999999999)
            {
                dt = default(DateTimeOffset);
                return false;
            }

            dt = new DateTimeOffset(d, offset);
            return true;
        }

        private static DateTime CreateDateTime(DateTimeParser dateTimeParser)
        {
            bool is24Hour;
            if (dateTimeParser.Hour == 24)
            {
                is24Hour = true;
                dateTimeParser.Hour = 0;
            }
            else
                is24Hour = false;

            var d = new DateTime(dateTimeParser.Year, dateTimeParser.Month, dateTimeParser.Day, dateTimeParser.Hour, dateTimeParser.Minute, dateTimeParser.Second);
            d = d.AddTicks(dateTimeParser.Fraction);

            if (is24Hour)
                d = d.AddDays(1);
            return d;
        }

        internal static bool TryParseDateTime(StringReference s, DateTimeZoneHandling dateTimeZoneHandling, string dateFormatString, CultureInfo culture, out DateTime dt)
        {
            if (s.Length > 0)
            {
                var i = s.StartIndex;
                if (s[i] == '/')
                {
                    if (s.Length >= 9 && s.StartsWith("/Date(") && s.EndsWith(")/"))
                        if (TryParseDateTimeMicrosoft(s, dateTimeZoneHandling, out dt))
                            return true;
                }
                else if (s.Length >= 19 && s.Length <= 40 && char.IsDigit(s[i]) && s[i + 10] == 'T')
                {
                    if (TryParseDateTimeIso(s, dateTimeZoneHandling, out dt))
                        return true;
                }

                if (!string.IsNullOrEmpty(dateFormatString))
                    if (TryParseDateTimeExact(s.ToString(), dateTimeZoneHandling, dateFormatString, culture, out dt))
                        return true;
            }

            dt = default(DateTime);
            return false;
        }

        internal static bool TryParseDateTime(string s, DateTimeZoneHandling dateTimeZoneHandling, string dateFormatString, CultureInfo culture, out DateTime dt)
        {
            if (s.Length > 0)
            {
                if (s[0] == '/')
                {
                    if (s.Length >= 9 && s.StartsWith("/Date(", StringComparison.Ordinal) && s.EndsWith(")/", StringComparison.Ordinal))
                        if (TryParseDateTimeMicrosoft(new StringReference(s.ToCharArray(), 0, s.Length), dateTimeZoneHandling, out dt))
                            return true;
                }
                else if (s.Length >= 19 && s.Length <= 40 && char.IsDigit(s[0]) && s[10] == 'T')
                {
                    if (DateTime.TryParseExact(s, IsoDateFormat, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind, out dt))
                    {
                        dt = EnsureDateTime(dt, dateTimeZoneHandling);
                        return true;
                    }
                }

                if (!string.IsNullOrEmpty(dateFormatString))
                    if (TryParseDateTimeExact(s, dateTimeZoneHandling, dateFormatString, culture, out dt))
                        return true;
            }

            dt = default(DateTime);
            return false;
        }

        internal static bool TryParseDateTimeOffset(StringReference s, string dateFormatString, CultureInfo culture, out DateTimeOffset dt)
        {
            if (s.Length > 0)
            {
                var i = s.StartIndex;
                if (s[i] == '/')
                {
                    if (s.Length >= 9 && s.StartsWith("/Date(") && s.EndsWith(")/"))
                        if (TryParseDateTimeOffsetMicrosoft(s, out dt))
                            return true;
                }
                else if (s.Length >= 19 && s.Length <= 40 && char.IsDigit(s[i]) && s[i + 10] == 'T')
                {
                    if (TryParseDateTimeOffsetIso(s, out dt))
                        return true;
                }

                if (!string.IsNullOrEmpty(dateFormatString))
                    if (TryParseDateTimeOffsetExact(s.ToString(), dateFormatString, culture, out dt))
                        return true;
            }

            dt = default(DateTimeOffset);
            return false;
        }

        internal static bool TryParseDateTimeOffset(string s, string dateFormatString, CultureInfo culture, out DateTimeOffset dt)
        {
            if (s.Length > 0)
            {
                if (s[0] == '/')
                {
                    if (s.Length >= 9 && s.StartsWith("/Date(", StringComparison.Ordinal) && s.EndsWith(")/", StringComparison.Ordinal))
                        if (TryParseDateTimeOffsetMicrosoft(new StringReference(s.ToCharArray(), 0, s.Length), out dt))
                            return true;
                }
                else if (s.Length >= 19 && s.Length <= 40 && char.IsDigit(s[0]) && s[10] == 'T')
                {
                    if (DateTimeOffset.TryParseExact(s, IsoDateFormat, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind, out dt))
                        if (TryParseDateTimeOffsetIso(new StringReference(s.ToCharArray(), 0, s.Length), out dt))
                            return true;
                }

                if (!string.IsNullOrEmpty(dateFormatString))
                    if (TryParseDateTimeOffsetExact(s, dateFormatString, culture, out dt))
                        return true;
            }

            dt = default(DateTimeOffset);
            return false;
        }

        private static bool TryParseMicrosoftDate(StringReference text, out long ticks, out TimeSpan offset, out DateTimeKind kind)
        {
            kind = DateTimeKind.Utc;

            var index = text.IndexOf('+', 7, text.Length - 8);

            if (index == -1)
                index = text.IndexOf('-', 7, text.Length - 8);

            if (index != -1)
            {
                kind = DateTimeKind.Local;

                if (!TryReadOffset(text, index + text.StartIndex, out offset))
                {
                    ticks = 0;
                    return false;
                }
            }
            else
            {
                offset = TimeSpan.Zero;
                index = text.Length - 2;
            }

            return Int64TryParse(text.Chars, 6 + text.StartIndex, index - 6, out ticks) == ParseResult.Success;
        }

        public static ParseResult Int32TryParse(char[] chars, int start, int length, out int value)
        {
            value = 0;

            if (length == 0)
                return ParseResult.Invalid;

            var isNegative = chars[start] == '-';

            if (isNegative)
            {
                // text just a negative sign
                if (length == 1)
                    return ParseResult.Invalid;

                start++;
                length--;
            }

            var end = start + length;

            // Int32.MaxValue and MinValue are 10 chars
            // Or is 10 chars and start is greater than two
            // Need to improve this!
            if (length > 10 || length == 10 && chars[start] - '0' > 2)
            {
                // invalid result takes precedence over overflow
                for (var i = start; i < end; i++)
                {
                    var c = chars[i] - '0';

                    if (c < 0 || c > 9)
                        return ParseResult.Invalid;
                }

                return ParseResult.Overflow;
            }

            for (var i = start; i < end; i++)
            {
                var c = chars[i] - '0';

                if (c < 0 || c > 9)
                    return ParseResult.Invalid;

                var newValue = 10 * value - c;

                // overflow has caused the number to loop around
                if (newValue > value)
                {
                    i++;

                    // double check the rest of the string that there wasn't anything invalid
                    // invalid result takes precedence over overflow result
                    for (; i < end; i++)
                    {
                        c = chars[i] - '0';

                        if (c < 0 || c > 9)
                            return ParseResult.Invalid;
                    }

                    return ParseResult.Overflow;
                }

                value = newValue;
            }

            // go from negative to positive to avoids overflow
            // negative can be slightly bigger than positive
            if (!isNegative)
            {
                // negative integer can be one bigger than positive
                if (value == int.MinValue)
                    return ParseResult.Overflow;

                value = -value;
            }

            return ParseResult.Success;
        }

        public static ParseResult Int64TryParse(char[] chars, int start, int length, out long value)
        {
            value = 0;

            if (length == 0)
                return ParseResult.Invalid;

            var isNegative = chars[start] == '-';

            if (isNegative)
            {
                // text just a negative sign
                if (length == 1)
                    return ParseResult.Invalid;

                start++;
                length--;
            }

            var end = start + length;

            // Int64.MaxValue and MinValue are 19 chars
            if (length > 19)
            {
                // invalid result takes precedence over overflow
                for (var i = start; i < end; i++)
                {
                    var c = chars[i] - '0';

                    if (c < 0 || c > 9)
                        return ParseResult.Invalid;
                }

                return ParseResult.Overflow;
            }

            for (var i = start; i < end; i++)
            {
                var c = chars[i] - '0';

                if (c < 0 || c > 9)
                    return ParseResult.Invalid;

                var newValue = 10 * value - c;

                // overflow has caused the number to loop around
                if (newValue > value)
                {
                    i++;

                    // double check the rest of the string that there wasn't anything invalid
                    // invalid result takes precedence over overflow result
                    for (; i < end; i++)
                    {
                        c = chars[i] - '0';

                        if (c < 0 || c > 9)
                            return ParseResult.Invalid;
                    }

                    return ParseResult.Overflow;
                }

                value = newValue;
            }

            // go from negative to positive to avoids overflow
            // negative can be slightly bigger than positive
            if (!isNegative)
            {
                // negative integer can be one bigger than positive
                if (value == long.MinValue)
                    return ParseResult.Overflow;

                value = -value;
            }

            return ParseResult.Success;
        }

        private static bool TryParseDateTimeMicrosoft(StringReference text, DateTimeZoneHandling dateTimeZoneHandling, out DateTime dt)
        {
            long ticks;
            TimeSpan offset;
            DateTimeKind kind;

            if (!TryParseMicrosoftDate(text, out ticks, out offset, out kind))
            {
                dt = default(DateTime);
                return false;
            }

            var utcDateTime = ConvertJavaScriptTicksToDateTime(ticks);

            switch (kind)
            {
                case DateTimeKind.Unspecified:
                    dt = DateTime.SpecifyKind(utcDateTime.ToLocalTime(), DateTimeKind.Unspecified);
                    break;
                case DateTimeKind.Local:
                    dt = utcDateTime.ToLocalTime();
                    break;
                default:
                    dt = utcDateTime;
                    break;
            }

            dt = EnsureDateTime(dt, dateTimeZoneHandling);
            return true;
        }

        private static bool TryParseDateTimeExact(string text, DateTimeZoneHandling dateTimeZoneHandling, string dateFormatString, CultureInfo culture, out DateTime dt)
        {
            DateTime temp;
            if (DateTime.TryParseExact(text, dateFormatString, culture, DateTimeStyles.RoundtripKind, out temp))
            {
                temp = EnsureDateTime(temp, dateTimeZoneHandling);
                dt = temp;
                return true;
            }

            dt = default(DateTime);
            return false;
        }

        private static bool TryParseDateTimeOffsetMicrosoft(StringReference text, out DateTimeOffset dt)
        {
            long ticks;
            TimeSpan offset;
            DateTimeKind kind;

            if (!TryParseMicrosoftDate(text, out ticks, out offset, out kind))
            {
                dt = default(DateTime);
                return false;
            }

            DateTime utcDateTime = ConvertJavaScriptTicksToDateTime(ticks);

            dt = new DateTimeOffset(utcDateTime.Add(offset).Ticks, offset);
            return true;
        }

        private static bool TryParseDateTimeOffsetExact(string text, string dateFormatString, CultureInfo culture, out DateTimeOffset dt)
        {
            DateTimeOffset temp;
            if (DateTimeOffset.TryParseExact(text, dateFormatString, culture, DateTimeStyles.RoundtripKind, out temp))
            {
                dt = temp;
                return true;
            }

            dt = default(DateTimeOffset);
            return false;
        }

        private static bool TryReadOffset(StringReference offsetText, int startIndex, out TimeSpan offset)
        {
            var negative = offsetText[startIndex] == '-';

            int hours;
            if (Int32TryParse(offsetText.Chars, startIndex + 1, 2, out hours) != ParseResult.Success)
            {
                offset = default(TimeSpan);
                return false;
            }

            var minutes = 0;
            if (offsetText.Length - startIndex > 5)
                if (Int32TryParse(offsetText.Chars, startIndex + 3, 2, out minutes) != ParseResult.Success)
                {
                    offset = default(TimeSpan);
                    return false;
                }

            offset = TimeSpan.FromHours(hours) + TimeSpan.FromMinutes(minutes);
            if (negative)
                offset = offset.Negate();

            return true;
        }

        #endregion

        #region Write

        internal static void WriteDateTimeString(TextWriter writer, DateTime value, DateFormatHandling format, string formatString, CultureInfo culture)
        {
            if (string.IsNullOrEmpty(formatString))
            {
                var chars = new char[64];
                var pos = WriteDateTimeString(chars, 0, value, null, value.Kind, format);
                writer.Write(chars, 0, pos);
            }
            else
            {
                writer.Write(value.ToString(formatString, culture));
            }
        }

        internal static int WriteDateTimeString(char[] chars, int start, DateTime value, TimeSpan? offset, DateTimeKind kind, DateFormatHandling format)
        {
            var pos = start;

            if (format == DateFormatHandling.MicrosoftDateFormat)
            {
                var o = offset ?? value.GetUtcOffset();

                var javaScriptTicks = ConvertDateTimeToJavaScriptTicks(value, o);

                @"\/Date(".CopyTo(0, chars, pos, 7);
                pos += 7;

                var ticksText = javaScriptTicks.ToString(CultureInfo.InvariantCulture);
                ticksText.CopyTo(0, chars, pos, ticksText.Length);
                pos += ticksText.Length;

                switch (kind)
                {
                    case DateTimeKind.Unspecified:
                        if (value != DateTime.MaxValue && value != DateTime.MinValue)
                            pos = WriteDateTimeOffset(chars, pos, o, format);
                        break;
                    case DateTimeKind.Local:
                        pos = WriteDateTimeOffset(chars, pos, o, format);
                        break;
                }

                @")\/".CopyTo(0, chars, pos, 3);
                pos += 3;
            }
            else
            {
                pos = WriteDefaultIsoDate(chars, pos, value);

                switch (kind)
                {
                    case DateTimeKind.Local:
                        pos = WriteDateTimeOffset(chars, pos, offset ?? value.GetUtcOffset(), format);
                        break;
                    case DateTimeKind.Utc:
                        chars[pos++] = 'Z';
                        break;
                }
            }

            return pos;
        }

        internal static int WriteDefaultIsoDate(char[] chars, int start, DateTime dt)
        {
            var length = 19;

            int year;
            int month;
            int day;
            GetDateValues(dt, out year, out month, out day);

            CopyIntToCharArray(chars, start, year, 4);
            chars[start + 4] = '-';
            CopyIntToCharArray(chars, start + 5, month, 2);
            chars[start + 7] = '-';
            CopyIntToCharArray(chars, start + 8, day, 2);
            chars[start + 10] = 'T';
            CopyIntToCharArray(chars, start + 11, dt.Hour, 2);
            chars[start + 13] = ':';
            CopyIntToCharArray(chars, start + 14, dt.Minute, 2);
            chars[start + 16] = ':';
            CopyIntToCharArray(chars, start + 17, dt.Second, 2);

            var fraction = (int)(dt.Ticks % 10000000L);

            if (fraction != 0)
            {
                var digits = 7;
                while (fraction % 10 == 0)
                {
                    digits--;
                    fraction /= 10;
                }

                chars[start + 19] = '.';
                CopyIntToCharArray(chars, start + 20, fraction, digits);

                length += digits + 1;
            }

            return start + length;
        }

        private static void CopyIntToCharArray(char[] chars, int start, int value, int digits)
        {
            while (digits-- != 0)
            {
                chars[start + digits] = (char)(value % 10 + 48);
                value /= 10;
            }
        }

        internal static int WriteDateTimeOffset(char[] chars, int start, TimeSpan offset, DateFormatHandling format)
        {
            chars[start++] = offset.Ticks >= 0L ? '+' : '-';

            var absHours = Math.Abs(offset.Hours);
            CopyIntToCharArray(chars, start, absHours, 2);
            start += 2;

            if (format == DateFormatHandling.IsoDateFormat)
                chars[start++] = ':';

            var absMinutes = Math.Abs(offset.Minutes);
            CopyIntToCharArray(chars, start, absMinutes, 2);
            start += 2;

            return start;
        }

        internal static void WriteDateTimeOffsetString(TextWriter writer, DateTimeOffset value, DateFormatHandling format, string formatString, CultureInfo culture)
        {
            if (string.IsNullOrEmpty(formatString))
            {
                var chars = new char[64];
                var pos = WriteDateTimeString(chars, 0, format == DateFormatHandling.IsoDateFormat ? value.DateTime : value.UtcDateTime, value.Offset, DateTimeKind.Local, format);

                writer.Write(chars, 0, pos);
            }
            else
            {
                writer.Write(value.ToString(formatString, culture));
            }
        }

        #endregion

        private static void GetDateValues(DateTime td, out int year, out int month, out int day)
        {
            var ticks = td.Ticks;
            // n = number of days since 1/1/0001
            var n = (int)(ticks / TicksPerDay);
            // y400 = number of whole 400-year periods since 1/1/0001
            var y400 = n / DaysPer400Years;
            // n = day number within 400-year period
            n -= y400 * DaysPer400Years;
            // y100 = number of whole 100-year periods within 400-year period
            var y100 = n / DaysPer100Years;
            // Last 100-year period has an extra day, so decrement result if 4
            if (y100 == 4)
                y100 = 3;
            // n = day number within 100-year period
            n -= y100 * DaysPer100Years;
            // y4 = number of whole 4-year periods within 100-year period
            var y4 = n / DaysPer4Years;
            // n = day number within 4-year period
            n -= y4 * DaysPer4Years;
            // y1 = number of whole years within 4-year period
            var y1 = n / DaysPerYear;
            // Last year has an extra day, so decrement result if 4
            if (y1 == 4)
                y1 = 3;

            year = y400 * 400 + y100 * 100 + y4 * 4 + y1 + 1;

            // n = day number within year
            n -= y1 * DaysPerYear;

            // Leap year calculation looks different from IsLeapYear since y1, y4,
            // and y100 are relative to year 1, not year 0
            var leapYear = y1 == 3 && (y4 != 24 || y100 == 3);
            var days = leapYear ? DaysToMonth366 : DaysToMonth365;
            // All months have less than 32 days, so n >> 5 is a good conservative
            // estimate for the month
            var m = n >> (5 + 1);
            // m = 1-based month number
            while (n >= days[m])
                m++;

            month = m;

            // Return 1-based day-of-month
            day = n - days[m - 1] + 1;
        }
    }

    /// <summary>
    /// Specifies how to treat the time value when converting between string and <see cref="DateTime"/>.
    /// </summary>
    public enum DateTimeZoneHandling
    {
        /// <summary>
        /// Treat as local time. If the <see cref="DateTime"/> object represents a Coordinated Universal Time (UTC), it is converted to the local time.
        /// </summary>
        Local = 0,

        /// <summary>
        /// Treat as a UTC. If the <see cref="DateTime"/> object represents a local time, it is converted to a UTC.
        /// </summary>
        Utc = 1,

        /// <summary>
        /// Treat as a local time if a <see cref="DateTime"/> is being converted to a string.
        /// If a string is being converted to <see cref="DateTime"/>, convert to a local time if a time zone is specified.
        /// </summary>
        Unspecified = 2,

        /// <summary>
        /// Time zone information should be preserved when converting.
        /// </summary>
        RoundtripKind = 3
    }

    internal struct StringReference
    {
        public char this[int i]
        {
            get { return Chars[i]; }
        }

        public char[] Chars { get; }

        public int StartIndex { get; }

        public int Length { get; }

        public StringReference(char[] chars, int startIndex, int length)
        {
            Chars = chars;
            StartIndex = startIndex;
            Length = length;
        }

        public override string ToString()
        {
            return new string(Chars, StartIndex, Length);
        }
    }

    internal static class StringReferenceExtensions
    {
        public static int IndexOf(this StringReference s, char c, int startIndex, int length)
        {
            var index = Array.IndexOf(s.Chars, c, s.StartIndex + startIndex, length);
            if (index == -1)
                return -1;

            return index - s.StartIndex;
        }

        public static bool StartsWith(this StringReference s, string text)
        {
            if (text.Length > s.Length)
                return false;

            var chars = s.Chars;

            for (var i = 0; i < text.Length; i++)
                if (text[i] != chars[i + s.StartIndex])
                    return false;

            return true;
        }

        public static bool EndsWith(this StringReference s, string text)
        {
            if (text.Length > s.Length)
                return false;

            var chars = s.Chars;

            var start = s.StartIndex + s.Length - text.Length;
            for (var i = 0; i < text.Length; i++)
                if (text[i] != chars[i + start])
                    return false;

            return true;
        }
    }

    internal enum ParserTimeZone
    {
        Unspecified = 0,
        Utc = 1,
        LocalWestOfUtc = 2,
        LocalEastOfUtc = 3
    }

    internal struct DateTimeParser
    {
        static DateTimeParser()
        {
            Power10 = new[] { -1, 10, 100, 1000, 10000, 100000, 1000000 };

            Lzyyyy = "yyyy".Length;
            Lzyyyy_ = "yyyy-".Length;
            Lzyyyy_MM = "yyyy-MM".Length;
            Lzyyyy_MM_ = "yyyy-MM-".Length;
            Lzyyyy_MM_dd = "yyyy-MM-dd".Length;
            Lzyyyy_MM_ddT = "yyyy-MM-ddT".Length;
            LzHH = "HH".Length;
            LzHH_ = "HH:".Length;
            LzHH_mm = "HH:mm".Length;
            LzHH_mm_ = "HH:mm:".Length;
            LzHH_mm_ss = "HH:mm:ss".Length;
            Lz_ = "-".Length;
            Lz_zz = "-zz".Length;
        }

        public int Year;
        public int Month;
        public int Day;
        public int Hour;
        public int Minute;
        public int Second;
        public int Fraction;
        public int ZoneHour;
        public int ZoneMinute;
        public ParserTimeZone Zone;

        private char[] _text;
        private int _end;

        private static readonly int[] Power10;

        private static readonly int Lzyyyy;
        private static readonly int Lzyyyy_;
        private static readonly int Lzyyyy_MM;
        private static readonly int Lzyyyy_MM_;
        private static readonly int Lzyyyy_MM_dd;
        private static readonly int Lzyyyy_MM_ddT;
        private static readonly int LzHH;
        private static readonly int LzHH_;
        private static readonly int LzHH_mm;
        private static readonly int LzHH_mm_;
        private static readonly int LzHH_mm_ss;
        private static readonly int Lz_;
        private static readonly int Lz_zz;

        private const short MaxFractionDigits = 7;

        public bool Parse(char[] text, int startIndex, int length)
        {
            _text = text;
            _end = startIndex + length;

            if (ParseDate(startIndex) && ParseChar(Lzyyyy_MM_dd + startIndex, 'T') && ParseTimeAndZoneAndWhitespace(Lzyyyy_MM_ddT + startIndex))
                return true;

            return false;
        }

        private bool ParseDate(int start)
        {
            return Parse4Digit(start, out Year)
                   && 1 <= Year
                   && ParseChar(start + Lzyyyy, '-')
                   && Parse2Digit(start + Lzyyyy_, out Month)
                   && 1 <= Month
                   && Month <= 12
                   && ParseChar(start + Lzyyyy_MM, '-')
                   && Parse2Digit(start + Lzyyyy_MM_, out Day)
                   && 1 <= Day
                   && Day <= DateTime.DaysInMonth(Year, Month);
        }

        private bool ParseTimeAndZoneAndWhitespace(int start)
        {
            return ParseTime(ref start) && ParseZone(start);
        }

        private bool ParseTime(ref int start)
        {
            if (!(Parse2Digit(start, out Hour)
                  && Hour <= 24
                  && ParseChar(start + LzHH, ':')
                  && Parse2Digit(start + LzHH_, out Minute)
                  && Minute < 60
                  && ParseChar(start + LzHH_mm, ':')
                  && Parse2Digit(start + LzHH_mm_, out Second)
                  && Second < 60
                  && (Hour != 24 || Minute == 0 && Second == 0))) // hour can be 24 if minute/second is zero)
                return false;

            start += LzHH_mm_ss;
            if (ParseChar(start, '.'))
            {
                Fraction = 0;
                var numberOfDigits = 0;

                while (++start < _end && numberOfDigits < MaxFractionDigits)
                {
                    var digit = _text[start] - '0';
                    if (digit < 0 || digit > 9)
                        break;

                    Fraction = Fraction * 10 + digit;

                    numberOfDigits++;
                }

                if (numberOfDigits < MaxFractionDigits)
                {
                    if (numberOfDigits == 0)
                        return false;

                    Fraction *= Power10[MaxFractionDigits - numberOfDigits];
                }

                if (Hour == 24 && Fraction != 0)
                    return false;
            }
            return true;
        }

        private bool ParseZone(int start)
        {
            if (start < _end)
            {
                var ch = _text[start];
                if (ch == 'Z' || ch == 'z')
                {
                    Zone = ParserTimeZone.Utc;
                    start++;
                }
                else
                {
                    if (start + 2 < _end
                        && Parse2Digit(start + Lz_, out ZoneHour)
                        && ZoneHour <= 99)
                        switch (ch)
                        {
                            case '-':
                                Zone = ParserTimeZone.LocalWestOfUtc;
                                start += Lz_zz;
                                break;

                            case '+':
                                Zone = ParserTimeZone.LocalEastOfUtc;
                                start += Lz_zz;
                                break;
                        }

                    if (start < _end)
                        if (ParseChar(start, ':'))
                        {
                            start += 1;

                            if (start + 1 < _end
                                && Parse2Digit(start, out ZoneMinute)
                                && ZoneMinute <= 99)
                                start += 2;
                        }
                        else
                        {
                            if (start + 1 < _end
                                && Parse2Digit(start, out ZoneMinute)
                                && ZoneMinute <= 99)
                                start += 2;
                        }
                }
            }

            return start == _end;
        }

        private bool Parse4Digit(int start, out int num)
        {
            if (start + 3 < _end)
            {
                var digit1 = _text[start] - '0';
                var digit2 = _text[start + 1] - '0';
                var digit3 = _text[start + 2] - '0';
                var digit4 = _text[start + 3] - '0';
                if (0 <= digit1 && digit1 < 10
                    && 0 <= digit2 && digit2 < 10
                    && 0 <= digit3 && digit3 < 10
                    && 0 <= digit4 && digit4 < 10)
                {
                    num = ((digit1 * 10 + digit2) * 10 + digit3) * 10 + digit4;
                    return true;
                }
            }
            num = 0;
            return false;
        }

        private bool Parse2Digit(int start, out int num)
        {
            if (start + 1 < _end)
            {
                var digit1 = _text[start] - '0';
                var digit2 = _text[start + 1] - '0';
                if (0 <= digit1 && digit1 < 10
                    && 0 <= digit2 && digit2 < 10)
                {
                    num = digit1 * 10 + digit2;
                    return true;
                }
            }
            num = 0;
            return false;
        }

        private bool ParseChar(int start, char ch)
        {
            return start < _end && _text[start] == ch;
        }
    }

    internal enum ParseResult
    {
        None = 0,
        Success = 1,
        Overflow = 2,
        Invalid = 3
    }

    /// <summary>
    /// Specifies how dates are formatted when writing JSON text.
    /// </summary>
    public enum DateFormatHandling
    {
        /// <summary>
        /// Dates are written in the ISO 8601 format, e.g. "2012-03-21T05:40Z".
        /// </summary>
        IsoDateFormat,

        /// <summary>
        /// Dates are written in the Microsoft JSON format, e.g. "\/Date(1198908717056)\/".
        /// </summary>
        MicrosoftDateFormat
    }
}
