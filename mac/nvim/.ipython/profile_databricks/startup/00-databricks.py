try:
    from dotenv import find_dotenv, load_dotenv

    # Automatically find and load .env file
    dotenv_path = find_dotenv(usecwd=True)
    if dotenv_path:
        load_dotenv(dotenv_path)
        print(f"✓ Loaded .env from: {dotenv_path}")
    else:
        print("ℹ No .env file found")
except ImportError:
    print("ℹ python-dotenv not installed, skipping .env loading")

# Initialize Databricks Connect
try:
    from databricks.connect import DatabricksSession
    from pyspark.dbutils import DBUtils

    spark = DatabricksSession.builder.getOrCreate()
    # utils = spark.dbutils

    dbutils = DBUtils(spark)

    print("✓ Databricks Connect initialized")
    print(f"✓ Spark version: {spark.version}")
    print("✓ Variables available: spark, dbutils")

except Exception as e:
    print(f"⚠ Failed to initialize Databricks Connect: {e}")
