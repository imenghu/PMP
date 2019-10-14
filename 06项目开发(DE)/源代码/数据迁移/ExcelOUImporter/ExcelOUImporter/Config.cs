using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace WGExcelImporter
{
    public class Config
    {
        /// <summary>
        /// 根据指定的key，获取配置文件中的value
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetConfig(string key)
        {
            ExeConfigurationFileMap file = new ExeConfigurationFileMap();
            file.ExeConfigFilename = AppDomain.CurrentDomain.BaseDirectory + "Message.config";
            Configuration config = ConfigurationManager.OpenMappedExeConfiguration(file, ConfigurationUserLevel.None);
            AppSettingsSection appsection = (AppSettingsSection)config.GetSection("appSettings");
            return appsection.Settings[key].Value;
        }
    }
}
