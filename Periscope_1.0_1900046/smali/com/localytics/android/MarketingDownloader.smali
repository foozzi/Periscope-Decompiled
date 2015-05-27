.class final Lcom/localytics/android/MarketingDownloader;
.super Lcom/localytics/android/BaseUploadThread;
.source ""


# static fields
.field private static final MARKETING_URL_HTTP:Ljava/lang/String; = "http://%s/api/v2/applications/%s/amp"

.field private static final MARKETING_URL_HTTPS:Ljava/lang/String; = "https://%s/api/v2/applications/%s/amp"


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/localytics/android/BaseUploadThread;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static downloadFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16

    .line 54
    move-object/from16 v4, p1

    .line 56
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 59
    const-string v0, "The file %s does exist and overwrite is turned off."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 60
    return-object p1

    .line 63
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v0, "Could not create the directory %s for saving file."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v0, "%s_temp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 76
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 82
    const/16 v10, 0x2000

    .line 83
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 84
    new-instance v12, Ljava/io/BufferedInputStream;

    const/16 v0, 0x4000

    invoke-direct {v12, v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 85
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 88
    const/16 v0, 0x2000

    new-array v15, v0, [B

    .line 90
    :goto_0
    invoke-virtual {v12, v15}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    move v14, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 92
    const/4 v0, 0x0

    invoke-virtual {v13, v15, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 96
    invoke-virtual {v7, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_3
    goto :goto_1

    .line 102
    :catch_0
    move-exception v7

    .line 104
    const-string v0, "In-app campaign not found. Creating a new one."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 105
    const/4 v4, 0x0

    .line 108
    :goto_1
    return-object v4
.end method

.method static getLocalFileURL(JZ)Ljava/lang/String;
    .locals 7

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-static {}, Lcom/localytics/android/MarketingDownloader;->getMarketingDataDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz p2, :cond_0

    .line 154
    const-string v0, "amp_rule_%d.zip"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    const-string v0, "marketing_rule_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    const-string v0, "Could not create the directory %s for saving the HTML file."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "index.html"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMarketingDataDirectory()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, ".localytics"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    sget-object v0, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRemoteFileURL(Lcom/localytics/android/MarketingMessage;)Ljava/lang/String;
    .locals 3

    .line 121
    const-string v0, "devices"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v0, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "tablet_location"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "both"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "phone_location"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "phone_location"

    invoke-static {p0, v0}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1
.end method


# virtual methods
.method uploadData()I
    .locals 6

    .line 209
    invoke-virtual {p0}, Lcom/localytics/android/MarketingDownloader;->getApiKey()Ljava/lang/String;

    move-result-object v5

    .line 210
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    sget-boolean v1, Lcom/localytics/android/Constants;->USE_HTTPS:Z

    if-eqz v1, :cond_0

    const-string v1, "https://%s/api/v2/applications/%s/amp"

    goto :goto_0

    :cond_0
    const-string v1, "http://%s/api/v2/applications/%s/amp"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/localytics/android/Constants;->MARKETING_HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/localytics/android/MarketingDownloader;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 211
    const/4 v0, 0x1

    return v0
.end method
