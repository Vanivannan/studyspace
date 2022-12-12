package com.software.spark

import org.apache.log4j.{Level, Logger}
import org.apache.spark.SparkContext

object HelloWorld {
  def main(args: Array[String]): Unit = {
    Logger.getLogger("org").setLevel(Level.ERROR)
    val sc = new SparkContext("local[*]", "HelloWorld")
    val lines = sc.textFile("data/ml-100k/u.data")
    val countLines = lines.count()
    println(s"Hello World! the data file has ${countLines} lines.")
    sc.stop()
  }
}
