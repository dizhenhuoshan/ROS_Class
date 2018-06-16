// Generated by gencpp from file meta/nstr.msg
// DO NOT EDIT!


#ifndef META_MESSAGE_NSTR_H
#define META_MESSAGE_NSTR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace meta
{
template <class ContainerAllocator>
struct nstr_
{
  typedef nstr_<ContainerAllocator> Type;

  nstr_()
    : num(0.0)
    , str()  {
    }
  nstr_(const ContainerAllocator& _alloc)
    : num(0.0)
    , str(_alloc)  {
  (void)_alloc;
    }



   typedef double _num_type;
  _num_type num;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _str_type;
  _str_type str;




  typedef boost::shared_ptr< ::meta::nstr_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::meta::nstr_<ContainerAllocator> const> ConstPtr;

}; // struct nstr_

typedef ::meta::nstr_<std::allocator<void> > nstr;

typedef boost::shared_ptr< ::meta::nstr > nstrPtr;
typedef boost::shared_ptr< ::meta::nstr const> nstrConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::meta::nstr_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::meta::nstr_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace meta

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'meta': ['/home/wymt/c++/ROS/d_5/src/meta/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::meta::nstr_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::meta::nstr_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::meta::nstr_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::meta::nstr_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::meta::nstr_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::meta::nstr_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::meta::nstr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2a1e50211f32bf06af60c533a1ce29f";
  }

  static const char* value(const ::meta::nstr_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2a1e50211f32bf0ULL;
  static const uint64_t static_value2 = 0x6af60c533a1ce29fULL;
};

template<class ContainerAllocator>
struct DataType< ::meta::nstr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "meta/nstr";
  }

  static const char* value(const ::meta::nstr_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::meta::nstr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 num\n\
string str\n\
";
  }

  static const char* value(const ::meta::nstr_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::meta::nstr_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
      stream.next(m.str);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct nstr_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::meta::nstr_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::meta::nstr_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<double>::stream(s, indent + "  ", v.num);
    s << indent << "str: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.str);
  }
};

} // namespace message_operations
} // namespace ros

#endif // META_MESSAGE_NSTR_H