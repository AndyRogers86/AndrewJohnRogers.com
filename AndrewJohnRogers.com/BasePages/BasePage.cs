using System;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace AndrewJohnRogers.com.BasePages
{
    public class BasePage : Page
    {
        /// <summary>
        /// Get a local resource string based on a passed key
        /// </summary>
        /// <param name="resourceKey">The key of the resource string</param>
        /// <returns></returns>
        public string ResourceText(string resourceKey)
        {
            object localResource = GetLocalResourceObject(resourceKey);

            if (localResource == null)
            {
                throw new Exception("Unable to find resource - " + resourceKey);
            }

            return localResource.ToString();
        }
    }
}