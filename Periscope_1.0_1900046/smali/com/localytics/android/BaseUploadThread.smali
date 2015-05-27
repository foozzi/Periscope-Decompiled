.class abstract Lcom/localytics/android/BaseUploadThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/BaseUploadThread$UploadType;
    }
.end annotation


# instance fields
.field customerID:Ljava/lang/String;

.field final mData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private final mSessionHandler:Lcom/localytics/android/BaseHandler;

.field private uploadResponseString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    .line 48
    iput-object p2, p0, Lcom/localytics/android/BaseUploadThread;->mData:Ljava/util/TreeMap;

    .line 49
    iput-object p3, p0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private static formatUploadBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 83
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 85
    :catch_0
    move-exception v2

    .line 87
    return-object p0
.end method

.method private retrieveHttpResponse(Ljava/io/InputStream;)V
    .locals 6

    .line 306
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0, v5}, Lcom/localytics/android/BaseUploadThread;->onUploadResponded(Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 322
    return-void
.end method


# virtual methods
.method getApiKey()Ljava/lang/String;
    .locals 3

    .line 54
    sget-object v1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getLocalyticsRollupKeyOrNull()Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    move-object v1, v2

    .line 61
    :cond_0
    return-object v1
.end method

.method onUploadResponded(Ljava/lang/String;)V
    .locals 4

    .line 331
    const-string v0, "%s upload response: \n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v2, v2, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 332
    iput-object p1, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public run()V
    .locals 7

    .line 66
    const/4 v5, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseUploadThread;->uploadData()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v5, v0

    .line 73
    iget-object v0, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v1, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v6

    iget-object v0, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v1, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    throw v6

    .line 75
    :goto_0
    return-void
.end method

.method upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15

    .line 100
    const/4 v0, 0x0

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "body cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_2

    .line 112
    const-string v0, "Analytics upload body before compression is: \n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_3

    .line 116
    const-string v0, "Profile upload body is: \n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/localytics/android/BaseUploadThread;->formatUploadBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 122
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 125
    const-string v0, "UTF-8"

    move-object/from16 v1, p3

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 126
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_5

    .line 134
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 136
    invoke-virtual {v7, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 137
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 143
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 145
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 148
    :cond_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 149
    goto :goto_1

    .line 152
    :cond_5
    move-object v6, v5

    .line 167
    :goto_1
    const/4 v0, 0x0

    if-eq v0, v7, :cond_9

    .line 171
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    const/4 v7, 0x0

    .line 178
    goto/16 :goto_5

    .line 174
    :catch_0
    move-exception v8

    .line 176
    const-string v0, "Caught exception"

    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v0, 0x0

    return v0

    .line 155
    :catch_1
    move-exception v8

    .line 157
    const-string v0, "UnsupportedEncodingException"

    :try_start_2
    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    const/4 v9, 0x0

    .line 167
    const/4 v0, 0x0

    if-eq v0, v7, :cond_6

    .line 171
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    const/4 v7, 0x0

    .line 178
    goto :goto_2

    .line 174
    :catch_2
    move-exception v10

    .line 176
    const-string v0, "Caught exception"

    invoke-static {v0, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_2
    return v9

    .line 160
    :catch_3
    move-exception v8

    .line 162
    const-string v0, "IOException"

    :try_start_4
    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    const/4 v9, 0x0

    .line 167
    const/4 v0, 0x0

    if-eq v0, v7, :cond_7

    .line 171
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 172
    const/4 v7, 0x0

    .line 178
    goto :goto_3

    .line 174
    :catch_4
    move-exception v10

    .line 176
    const-string v0, "Caught exception"

    invoke-static {v0, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v0, 0x0

    return v0

    :cond_7
    :goto_3
    return v9

    .line 167
    :catchall_0
    move-exception v11

    const/4 v0, 0x0

    if-eq v0, v7, :cond_8

    .line 171
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 172
    const/4 v7, 0x0

    .line 178
    goto :goto_4

    .line 174
    :catch_5
    move-exception v12

    .line 176
    const-string v0, "Caught exception"

    invoke-static {v0, v12}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v0, 0x0

    return v0

    :cond_8
    :goto_4
    throw v11

    .line 183
    :cond_9
    :goto_5
    const/4 v7, 0x0

    .line 186
    :try_start_7
    new-instance v0, Ljava/net/URL;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 188
    const v0, 0xea60

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    const v0, 0xea60

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 191
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_b

    .line 193
    const-string v0, "Content-Type"

    const-string v1, "application/x-gzip"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "X-DONT-SEND-AMP"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 199
    :cond_b
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_7
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-ne v1, v0, :cond_c

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 203
    const-string v0, "AMP-Test-Mode"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_c
    const-string v0, "Accept-Encoding"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "x-upload-time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "x-install-id"

    invoke-static {}, Lcom/localytics/android/Localytics;->getInstallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "x-app-id"

    sget-object v1, Lcom/localytics/android/Localytics;->apiKey:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "x-client-version"

    const-string v1, "androida_3.1.1"

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "x-app-version"

    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "x-customer-id"

    iget-object v1, p0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v1, p1

    if-eq v1, v0, :cond_e

    .line 219
    array-length v0, v6

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 220
    const/4 v8, 0x0

    .line 223
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v8, v0

    .line 224
    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 228
    const/4 v0, 0x0

    if-eq v0, v8, :cond_e

    .line 230
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 231
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 232
    const/4 v8, 0x0

    goto :goto_8

    .line 228
    :catchall_1
    move-exception v13

    const/4 v0, 0x0

    if-eq v0, v8, :cond_d

    .line 230
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 231
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 232
    const/4 v8, 0x0

    :cond_d
    throw v13

    .line 237
    :cond_e
    :goto_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 239
    const-string v0, "%s upload complete with status %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v2, v2, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 241
    const/16 v0, 0x1ad

    if-ne v8, v0, :cond_10

    .line 243
    const/4 v9, 0x0

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_f

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_f
    return v9

    .line 248
    :cond_10
    const/16 v0, 0x190

    if-lt v8, v0, :cond_12

    const/16 v0, 0x1f3

    if-gt v8, v0, :cond_12

    .line 250
    const/4 v9, 0x1

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_11

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_11
    return v9

    .line 255
    :cond_12
    const/16 v0, 0x1f4

    if-lt v8, v0, :cond_14

    const/16 v0, 0x257

    if-gt v8, v0, :cond_14

    .line 257
    const/4 v9, 0x0

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_13

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_13
    return v9

    .line 263
    :cond_14
    :try_start_b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/localytics/android/BaseUploadThread;->retrieveHttpResponse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_1b

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 265
    :catch_6
    move-exception v8

    .line 267
    move/from16 v0, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 269
    const-string v0, "ClientProtocolException"

    :try_start_c
    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 270
    const/4 v9, 0x0

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_15

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_15
    return v9

    .line 274
    :cond_16
    add-int/lit8 v0, p4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    :try_start_d
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/localytics/android/BaseUploadThread;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v9

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_17

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_17
    return v9

    .line 277
    :catch_7
    move-exception v8

    .line 279
    const-string v0, "ClientProtocolException"

    :try_start_e
    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 280
    const/4 v9, 0x0

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_18

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_18
    return v9

    .line 282
    :catch_8
    move-exception v8

    .line 284
    const-string v0, "ClientProtocolException"

    :try_start_f
    invoke-static {v0, v8}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 285
    const/4 v9, 0x0

    .line 289
    const/4 v0, 0x0

    if-eq v0, v7, :cond_19

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_19
    return v9

    .line 289
    :catchall_2
    move-exception v14

    const/4 v0, 0x0

    if-eq v0, v7, :cond_1a

    .line 291
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 292
    const/4 v7, 0x0

    :cond_1a
    throw v14

    .line 296
    :cond_1b
    :goto_9
    const/4 v0, 0x1

    return v0
.end method

.method abstract uploadData()I
.end method
