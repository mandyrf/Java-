1. java 的基本数据类型有哪几种？
基本类型有8种：4种整数类型， 两种浮点数类型，一种字符类型，一种布尔类型
byte: 1 个字节，8 位
short: 2byte
int : 4 byte
long: 8 byte

float:32 位
double:64 位

char: 16 位
boolean: true false

注意：String 不是基本数据类型

2. "==" 和 equals() 的区别？
（1）"==" 作用1： 比较基本数据类型的值是否相等
          作用2： 引用数据类型引用的地址是否相同， 比较两个对象的地址是否一样
（2）Object 中equals的源码：
 public boolean equals(Object obj) {
        return (this == obj);
    }
比较的是当前对象的引用和obj的引用是否相同，也就是说比较的默认就是地址
这里euqals 和 == 效果一样
（3）String 是一个类， 是引用数据类型。
public static void main(String[] args) {
        String a = new String("ab"); // a 为⼀个引⽤
        String b = new String("ab"); // b为另⼀个引⽤,对象的内容⼀样
        String aa = "ab"; // 放在常量池中
        String bb = "ab"; // 从常量池中查找
        if (aa == bb) { // true
            System.out.println("aa==bb");
        }
        if (a == b) { // false，⾮同⼀对象
            System.out.println("a==b");
        }
        if (a.equals(b)) { // true
            System.out.println("aEQb");
        }
        if (42 == 42.0) { // true
            System.out.println("true");
        }
}

  private final char value[];
  public boolean equals(Object anObject) {
        if (this == anObject) {
            return true;  // 先比较引用地址， 是不是同一个对象
        }
        if (anObject instanceof String) {  // 判断是否是一个String 类
            String anotherString = (String)anObject;
            int n = value.length;
            if (n == anotherString.value.length) {  // 先比较字符串的长度
                char v1[] = value;
                char v2[] = anotherString.value;
                int i = 0;
                while (n-- != 0) {
                    if (v1[i] != v2[i])  // 再比较字符是否相等
                        return false;
                    i++;
                }
                return true;
            }
        }
        return false;
    }
    
3. java 中的集合类？
集合与数组的区别
（1）长度区别：集合长度可变，数组长度不可变
（2）内容区别：集合可存储不同类型元素，数组存储只可单一类型元素
（3）元素区别：集合只能存储引用类型元素，数组可存储引用类型，也可存储基本类型
![image](https://github.com/mandyrf/Java-/blob/main/java%20%E9%9B%86%E5%90%88%E7%B1%BB%E5%9B%BE.png）



