// Generated by gencpp from file mars_formation/Path.msg
// DO NOT EDIT!


#ifndef MARS_FORMATION_MESSAGE_PATH_H
#define MARS_FORMATION_MESSAGE_PATH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mars_formation/Point2d.h>
#include <mars_formation/Point2d.h>
#include <mars_formation/Point2d.h>

namespace mars_formation
{
template <class ContainerAllocator>
struct Path_
{
  typedef Path_<ContainerAllocator> Type;

  Path_()
    : platform_id(0)
    , path_points()
    , goal()
    , final_orient_point()  {
    }
  Path_(const ContainerAllocator& _alloc)
    : platform_id(0)
    , path_points(_alloc)
    , goal(_alloc)
    , final_orient_point(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _platform_id_type;
  _platform_id_type platform_id;

   typedef std::vector< ::mars_formation::Point2d_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::mars_formation::Point2d_<ContainerAllocator> >::other >  _path_points_type;
  _path_points_type path_points;

   typedef  ::mars_formation::Point2d_<ContainerAllocator>  _goal_type;
  _goal_type goal;

   typedef  ::mars_formation::Point2d_<ContainerAllocator>  _final_orient_point_type;
  _final_orient_point_type final_orient_point;





  typedef boost::shared_ptr< ::mars_formation::Path_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mars_formation::Path_<ContainerAllocator> const> ConstPtr;

}; // struct Path_

typedef ::mars_formation::Path_<std::allocator<void> > Path;

typedef boost::shared_ptr< ::mars_formation::Path > PathPtr;
typedef boost::shared_ptr< ::mars_formation::Path const> PathConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mars_formation::Path_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mars_formation::Path_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mars_formation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'mars_formation': ['/home/konst/mars_formation/src/mars_formation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mars_formation::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mars_formation::Path_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_formation::Path_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mars_formation::Path_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_formation::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mars_formation::Path_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mars_formation::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3608af306691de0c868f4fded45490ff";
  }

  static const char* value(const ::mars_formation::Path_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3608af306691de0cULL;
  static const uint64_t static_value2 = 0x868f4fded45490ffULL;
};

template<class ContainerAllocator>
struct DataType< ::mars_formation::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mars_formation/Path";
  }

  static const char* value(const ::mars_formation::Path_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mars_formation::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32     platform_id\n"
"Point2d[] path_points\n"
"Point2d goal\n"
"Point2d final_orient_point\n"
"\n"
"================================================================================\n"
"MSG: mars_formation/Point2d\n"
"float32 x\n"
"float32 y\n"
;
  }

  static const char* value(const ::mars_formation::Path_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mars_formation::Path_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.platform_id);
      stream.next(m.path_points);
      stream.next(m.goal);
      stream.next(m.final_orient_point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Path_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mars_formation::Path_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mars_formation::Path_<ContainerAllocator>& v)
  {
    s << indent << "platform_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.platform_id);
    s << indent << "path_points[]" << std::endl;
    for (size_t i = 0; i < v.path_points.size(); ++i)
    {
      s << indent << "  path_points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mars_formation::Point2d_<ContainerAllocator> >::stream(s, indent + "    ", v.path_points[i]);
    }
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::mars_formation::Point2d_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "final_orient_point: ";
    s << std::endl;
    Printer< ::mars_formation::Point2d_<ContainerAllocator> >::stream(s, indent + "  ", v.final_orient_point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARS_FORMATION_MESSAGE_PATH_H
