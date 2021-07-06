using System.Text;
using CODE.Framework.Wpf;
using CODE.Framework.Wpf.Utilities.Extensions;

namespace CODE.Framework.Wpf.Utilities
{
    /// <summary>
    /// Various helper methods related to exceptions
    /// </summary>
    public static class ExceptionHelper
    {
        /// <summary>
        /// Analyzes exception information and returns HTML with details about the exception.
        /// </summary>
        /// <param name="exception">Exception object</param>
        /// <returns>Exception HTML</returns>
        public static string GetExceptionHtml(Exception exception)
        {
            var sb = new StringBuilder();
            sb.Append($@"<table><tr><td><font face=""Verdana"" size=""-1"">{Resources.ExceptionStack}</br>");
            var errorCount = -1;
            while (exception != null)
            {
                errorCount++;
                if (errorCount > 0) sb.Append("<br>");
                // + "icon"
                sb.Append($"<b><span onclick=\"javascript:ShowError('error{StringHelper.ToString(errorCount)}','errorTable{StringHelper.ToString(errorCount)}');\" name=\"error{StringHelper.ToString(errorCount)}\" id=\"error{StringHelper.ToString(errorCount)}\">+</span>");
                // Error message
                sb.Append($"&nbsp{exception.Message}</b>");

                // Error detail
                sb.Append($"<table width = \"100%\" id=\"errorTable{StringHelper.ToString(errorCount)}\" style=\"display:none\"><tr><td width=\"25\"> </td><td valign=\"top\" bgcolor=\"#ffffcc\"><font face=\"Tahoma\" size=\"-1\" color=\"maroon\"><b>");
                // Exception attributes
                sb.Append($"{Resources.ExceptionAttributes}<br><table>");
                // Header
                sb.Append($"<tr><td> </td><td style=\"BORDER-BOTTOM: black 1px solid\"><font face=\"Tahoma\" size=\"-1\"><font color=\"Navy\">{Resources.ExceptionInformation}</font>");
                sb.Append($"</td><td style=\"BORDER-BOTTOM: black 1px solid\"><font face=\"Tahoma\" size=\"-1\"><font color=\"Navy\">{Resources.ExceptionDetail}</font></td></tr>");
                // Message
                sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">{Resources.Message}</td><td><font face=\"Tahoma\" size=\"-1\">{exception.Message}</td></tr>");
                // Exception type
                sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">{Resources.ExceptionType}</td><td><font face=\"Tahoma\" size=\"-1\">{StringHelper.ToString(exception.GetType())}</td></tr>");
                // Source
                sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">{Resources.Source}</td><td><font face=\"Tahoma\" size=\"-1\">{exception.Source}</td></tr>");
                if (exception.TargetSite != null)
                {
                    // Thrown by code in method
                    sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">{Resources.ThrownByMethod}</td><td><font face=\"Tahoma\" size=\"-1\">{exception.TargetSite.Name}</td></tr>");
                    // Thrown by code in method
                    sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">{Resources.ThrownByClass}</td><td><font face=\"Tahoma\" size=\"-1\">");
                    if (exception.TargetSite.DeclaringType != null) sb.Append(exception.TargetSite.DeclaringType.Name);
                    sb.Append("</td></tr></table>");
                }

                // Stack Trace
                sb.Append($"{Resources.StackTrace}<br><table>");
                // Header
                sb.Append($"<tr><td> </td><td style=\"BORDER-BOTTOM: black 1px solid\"><font face=\"Tahoma\" size=\"-1\"><font color=\"Navy\">{Resources.LineNumber}</font>");
                sb.Append($"</td><td style=\"BORDER-BOTTOM: black 1px solid\"><font face=\"Tahoma\" size=\"-1\"><font color=\"Navy\">{Resources.Method}</font>");
                sb.Append($"</td><td style=\"BORDER-BOTTOM: black 1px solid\"><font face=\"Tahoma\" size=\"-1\"><font color=\"Navy\">{Resources.SourceFile}</font>");
                sb.Append("</td></tr>");
                // Actual stack trace
                var stackLines = exception.StackTrace.Split('\r');
                foreach (var stackLine in stackLines)
                    if (stackLine.IndexOf(" in ", StringComparison.Ordinal) > -1)
                    {
                        // We have detailed info
                        // We only have generic info
                        var detail = stackLine.Trim().Trim();
                        detail = detail.Replace("at ", string.Empty);
                        var at = detail.IndexOf(" in ", StringComparison.Ordinal);
                        var file = detail.Substring(at + 4);
                        detail = detail.Substring(0, at);
                        at = file.IndexOf(":line", StringComparison.Ordinal);
                        var sLine = file.Substring(at + 6);
                        file = file.Substring(0, at);
                        sb.Append("<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\">");
                        sb.Append(sLine);
                        sb.Append("</td><td><font face=\"Tahoma\" size=\"-1\">");
                        sb.Append(detail);
                        sb.Append("</td><td><font face=\"Tahoma\" size=\"-1\">");
                        sb.Append(file);
                        sb.Append("</td></tr>");
                    }
                    else
                    {
                        // We only have generic info
                        var detail = stackLine.Trim().Trim();
                        detail = detail.Replace("at ", string.Empty);
                        sb.Append($"<tr><td> </td><td><font face=\"Tahoma\" size=\"-1\" color=\"darkgray\">{Resources.NotApplicable}");
                        sb.Append("</td><td><font face=\"Tahoma\" size=\"-1\" color=\"darkgray\">");
                        sb.Append(detail);
                        sb.Append("</td><td><font face=\"Tahoma\" size=\"-1\" color=\"darkgray\">");
                        sb.Append("</td></tr>");
                    }
                sb.Append("</table>");

                // Closing the table
                sb.Append("</td></tr></table>");

                // Next exception
                exception = exception.InnerException;
            }
            sb.Append(@"</font></td></tr></table>");
            // Script needed to expand and collapse
            sb.AppendLine("\r\n<script language=\"JavaScript\">");
            sb.AppendLine("function ShowError(id,idTable) {");
            sb.AppendLine("   obj = document.getElementById(idTable);");
            sb.AppendLine("   obj2 = document.getElementById(id);");
            sb.AppendLine("   if (obj.style.display == \"none\") {");
            sb.AppendLine("       obj2.innerHTML = \"-\";");
            sb.AppendLine("       obj.style.display = \"\";");
            sb.AppendLine("   }");
            sb.AppendLine("   else {");
            sb.AppendLine("       obj2.innerHTML = \"+\";");
            sb.AppendLine("       obj.style.display = \"none\";");
            sb.AppendLine("   }");
            sb.AppendLine("}");
            sb.AppendLine("</script>");
            return sb.ToString();
        }

        /// <summary>
        /// Analyzes exception information and returns it as a plain text string
        /// </summary>
        /// <param name="exception">Exception object</param>
        /// <returns>string</returns>
        public static string GetExceptionText(Exception exception)
        {
            var sb = new StringBuilder();
            sb.Append(Resources.ExceptionStack + "\r\n\r\n");
            var errorCount = -1;
            while (exception != null)
            {
                errorCount++;
                if (errorCount > 0) sb.AppendLine();
                sb.Append(exception.Message);

                // Error detail
                // Exception attributes
                sb.AppendLine($"  {Resources.ExceptionAttributes}");
                // Message
                sb.AppendLine($"    {Resources.Message} {StringHelper.ToStringSafe(exception.Message)}");
                // Exception type
                sb.AppendLine($"    {Resources.ExceptionType} {StringHelper.ToStringSafe(exception.GetType())}");
                // Source
                sb.AppendLine($"    {Resources.Source} {StringHelper.ToStringSafe(exception.Source)}");
                if (exception.TargetSite != null)
                {
                    // Thrown by code in method
                    sb.AppendLine($"    {Resources.ThrownByMethod} {StringHelper.ToStringSafe(exception.TargetSite.Name)}");
                    if (exception.TargetSite.DeclaringType != null)
                        // Thrown by code in method
                        sb.AppendLine($"    {Resources.ThrownByClass} {StringHelper.ToStringSafe(exception.TargetSite.DeclaringType.Name)}");
                }

                // Stack Trace
                sb.AppendLine($"  {Resources.StackTrace}");
                // Actual stack trace
                if (!string.IsNullOrEmpty(exception.StackTrace))
                {
                    var stackLines = exception.StackTrace.Split('\r');
                    foreach (var stackLine in stackLines)
                        if (!string.IsNullOrEmpty(stackLine))
                            if (stackLine.IndexOf(" in ", StringComparison.Ordinal) > -1)
                            {
                                // We have detailed info
                                // We only have generic info
                                var detail = stackLine.Trim().Trim();
                                detail = detail.Replace("at ", string.Empty);
                                var at = detail.IndexOf(" in ", StringComparison.Ordinal);
                                var file = detail.Substring(at + 4);
                                detail = detail.Substring(0, at);
                                at = file.IndexOf(":line", StringComparison.Ordinal);
                                var lineNumber = file.Substring(at + 6);
                                file = file.Substring(0, at);
                                sb.Append($"    {Resources.LineNumber}: {lineNumber} -- ");
                                sb.Append($"{Resources.Method}: {detail} -- ");
                                sb.Append($"{Resources.SourceFile}: {file}\r\n");
                            }
                            else
                            {
                                // We only have generic info
                                var detail = stackLine.Trim().Trim();
                                detail = detail.Replace("at ", string.Empty);
                                sb.Append($"    {Resources.Method}: {detail}");
                            }
                }

                // Next exception
                exception = exception.InnerException;
            }
            return sb.ToString();
        }
    }
}