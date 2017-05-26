using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;
using System.Data;


namespace ApplicationLayer
{
    public  class updatespecification
    {
        public string _brand;
        public string _model;
        public string _memory;
        public int _price;
        public string _ram;
        public string _rom;
        public string _cpu;
        public string _camera;
        public string _network;
        public string _simtype;
        public string _wifi;
        public string _dimension;
        public int _did;

        public int did
        {
            get { return _did; }
            set { _did = value; }
        }

        public int price
        {
            get { return _price; }
            set { _price = value; }
        }
        public string brand
        {
            get { return _brand; }
            set { _brand = value; }

        }
        public string model
        {
            get { return _model; }
            set { _model = value; }
        }
        public string wifi
        {
            set { _wifi = value; }
            get { return _wifi; }
        }
        public string sim
        {
            get { return _simtype; }
            set { _simtype = value; }
        }
        public string network
        {
            get { return _network; }
            set { _network = value; }
        }
        public string dimension
        {
            get { return _dimension; }
            set { _dimension = value; }
        }
        public string ram
        {
            get { return _ram; }
            set { _ram = value; }
        }
        public string rom
        {
            get { return _rom; }
            set { _rom = value; }
        }
        public string cpu
        {
            get { return _cpu; }
            set { _cpu = value; }
        }

        public string memory
        {
            get { return _memory; }
            set { _memory = value; }
        }

        public string camera
        {
            get { return _camera; }
            set { _camera = value; }
        }

        public int bl_updatespec()
        {
            UpdateQueries uq = new UpdateQueries();
            return uq.dl_updatespec( _did,_brand, _model, _memory, _price, _ram, _rom, _cpu, _camera, _network, _simtype, _wifi, _dimension);
        }

            

    }


}
