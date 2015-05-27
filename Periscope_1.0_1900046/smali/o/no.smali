.class public Lo/no;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Ri:Ljava/security/SecureRandom;


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final Rg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final Rk:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lo/no;->Ri:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/no;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 42
    iput-object p2, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 43
    iput-object p3, p0, Lo/no;->Rk:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lo/no;->method:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lo/no;->url:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lo/no;->Rg:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private bK()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lo/no;->Ri:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bL()Ljava/lang/String;
    .locals 3

    .line 144
    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 145
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/no;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/sv;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lo/sv;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimestamp()Ljava/lang/String;
    .locals 6

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v3

    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v6, v0

    .line 106
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 110
    if-ge v4, v3, :cond_0

    .line 111
    const-string v0, "%26"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 168
    if-eqz p3, :cond_0

    .line 169
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public bJ()Ljava/lang/String;
    .locals 5

    .line 53
    invoke-direct {p0}, Lo/no;->bK()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {p0}, Lo/no;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v1, v2}, Lo/no;->ˌ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {p0, v3}, Lo/no;->ᵧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {p0, v1, v2, v4}, Lo/no;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "OAuth"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lo/no;->Rk:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lo/no;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "oauth_nonce"

    invoke-direct {p0, v2, v0, p1}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "oauth_signature"

    invoke-direct {p0, v2, v0, p3}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "oauth_signature_method"

    const-string v1, "HMAC-SHA1"

    invoke-direct {p0, v2, v0, v1}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "oauth_timestamp"

    invoke-direct {p0, v2, v0, p2}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v3, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 161
    :goto_0
    const-string v0, "oauth_token"

    invoke-direct {p0, v2, v0, v3}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-direct {p0, v2, v0, v1}, Lo/no;->ˊ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˌ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 71
    iget-object v0, p0, Lo/no;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 72
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lo/sv;->ˊ(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object v4

    .line 73
    iget-object v0, p0, Lo/no;->Rg:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/no;->Rg:Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lo/no;->Rk:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "oauth_callback"

    iget-object v1, p0, Lo/no;->Rk:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lo/no;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "oauth_nonce"

    invoke-virtual {v4, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "oauth_signature_method"

    const-string v1, "HMAC-SHA1"

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "oauth_timestamp"

    invoke-virtual {v4, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "oauth_token"

    iget-object v1, p0, Lo/no;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_2
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/no;->method:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lo/sv;->ﭠ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v4}, Lo/no;->ˊ(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ᵧ(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 119
    :try_start_0
    invoke-direct {p0}, Lo/no;->bL()Ljava/lang/String;

    move-result-object v3

    .line 122
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 123
    const-string v0, "UTF8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 124
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "HmacSHA1"

    invoke-direct {v6, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 125
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    .line 126
    invoke-virtual {v7, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 127
    invoke-virtual {v7, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v8

    .line 128
    new-instance v0, Ljava/lang/String;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-static {v8, v2, v1}, Lo/sn$if;->ˈ([BII)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 131
    :catch_0
    move-exception v3

    .line 132
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to calculate signature"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const-string v0, ""

    return-object v0

    .line 134
    :catch_1
    move-exception v3

    .line 135
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to calculate signature"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    const-string v0, ""

    return-object v0

    .line 137
    :catch_2
    move-exception v3

    .line 138
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to calculate signature"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    const-string v0, ""

    return-object v0
.end method
