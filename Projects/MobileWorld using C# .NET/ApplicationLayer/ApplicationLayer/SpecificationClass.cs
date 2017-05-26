using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace ApplicationLayer
{
    public class SpecificationClass
    {
        public int setSpecification(String network, String brand, String model, String sim, String dimension, String cpu, String rom, String ram, String memory, String camera, String wireless, String imgPath, int price)
        {
            InsertQueries iq = new InsertQueries();
            return iq.setSpecification(network, brand, model, sim, dimension, cpu, rom, ram, memory, camera, wireless, imgPath, price);
        }
    }
}
