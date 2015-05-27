.class abstract Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LocalyticsDatabaseHelper"
.end annotation


# static fields
.field static final SQLITE_BOOLEAN_FALSE:Ljava/lang/String; = "0"

.field static final SQLITE_BOOLEAN_TRUE:Ljava/lang/String; = "1"

.field private static completedMigrations:I = 0x0

.field static oldDB:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static oldDBFile:Ljava/io/File; = null


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 426
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 10

    .line 435
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 437
    const-class v4, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;

    monitor-enter v4

    .line 439
    :try_start_0
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    .line 441
    const-string v0, "com.localytics.android.%s.sqlite"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 442
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 443
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    .line 444
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x0

    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 447
    new-instance v7, Lcom/localytics/android/MigrationDatabaseHelper;

    const/16 v0, 0x12

    invoke-direct {v7, v5, v0}, Lcom/localytics/android/MigrationDatabaseHelper;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    invoke-virtual {v7}, Lcom/localytics/android/MigrationDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    goto :goto_0

    .line 452
    :catch_0
    move-exception v8

    .line 454
    const-string v0, "Error opening old database; old data will not be retained."

    :try_start_2
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :cond_0
    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v4

    throw v9

    .line 459
    :goto_1
    return-void
.end method

.method static cleanUpOldDB()V
    .locals 2

    .line 465
    sget v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    .line 466
    sget v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->completedMigrations:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 468
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 469
    sget-object v0, Lcom/localytics/android/BaseProvider$LocalyticsDatabaseHelper;->oldDBFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 471
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract migrateV2ToV3(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
