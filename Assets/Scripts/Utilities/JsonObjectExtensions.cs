using System;
using System.Globalization;
using PlayFab.Json;

namespace Valari.Utilities
{
    public static class JsonObjectExtensions
    {
        public static T GetValue<T>(this JsonObject jsonObject, string key, T defaultValue = default(T))
        {
            if (jsonObject.TryGetValue(key, out object value))
            {
                if (typeof(T).IsEnum)
                {
                    string stringValue = (string)value;
                    return !string.IsNullOrEmpty(stringValue) ? (T)Enum.Parse(typeof(T), stringValue) : defaultValue;
                }
                else if (value is IConvertible convertibleValue)
                    return (T)convertibleValue.ToType(typeof(T), CultureInfo.InvariantCulture);
                return (T)value;
            }
            return defaultValue;
        }
        
        public static T ParseEnum<T>(string value)
        {
            return (T) Enum.Parse(typeof(T), value, true);
        }
    }
}