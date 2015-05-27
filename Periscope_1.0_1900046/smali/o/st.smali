.class Lo/st;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final Yi:[Ljavax/net/ssl/TrustManager;

.field private final Yj:Lo/su;

.field private final Yk:J

.field private final Yl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<[B>;"
        }
    .end annotation
.end field

.field private final Ym:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/su;Lo/ss;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/st;->Yl:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/st;->Ym:Ljava/util/Set;

    .line 74
    invoke-direct {p0, p1}, Lo/st;->ˊ(Lo/su;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    iput-object v0, p0, Lo/st;->Yi:[Ljavax/net/ssl/TrustManager;

    .line 75
    iput-object p1, p0, Lo/st;->Yj:Lo/su;

    .line 76
    invoke-interface {p2}, Lo/ss;->ة()J

    move-result-wide v0

    iput-wide v0, p0, Lo/st;->Yk:J

    .line 78
    invoke-interface {p2}, Lo/ss;->ע()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 79
    iget-object v0, p0, Lo/st;->Yl:Ljava/util/List;

    invoke-direct {p0, v5}, Lo/st;->丶(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private ˊ([Ljava/security/cert/X509Certificate;)V
    .locals 12

    .line 124
    iget-wide v0, p0, Lo/st;->Yk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/st;->Yk:J

    sub-long/2addr v0, v2

    const-wide v2, 0x39ef8b000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 127
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate pins are stale, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/st;->Yk:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, 0x39ef8b000L

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "falling back to system trust."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lo/st;->Yj:Lo/su;

    invoke-static {p1, v0}, Lo/sk;->ˊ([Ljava/security/cert/X509Certificate;Lo/su;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 137
    move-object v8, v7

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 138
    invoke-direct {p0, v11}, Lo/st;->ˊ(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    return-void

    .line 137
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No valid pins found in chain!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ˊ([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5

    .line 116
    iget-object v1, p0, Lo/st;->Yi:[Ljavax/net/ssl/TrustManager;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 117
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private ˊ(Ljava/security/cert/X509Certificate;)Z
    .locals 6

    .line 98
    const-string v0, "SHA1"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 102
    iget-object v0, p0, Lo/st;->Yl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v5, v0

    .line 103
    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ˊ(Lo/su;)[Ljavax/net/ssl/TrustManager;
    .locals 2

    .line 85
    const-string v0, "X509"

    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 86
    iget-object v0, p1, Lo/su;->Yn:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 88
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 91
    :catch_1
    move-exception v1

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private 丶(Ljava/lang/String;)[B
    .locals 7

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 171
    div-int/lit8 v0, v4, 0x2

    new-array v5, v0, [B

    .line 173
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 174
    div-int/lit8 v0, v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 173
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 178
    :cond_0
    return-object v5
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lo/st;->Ym:Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/st;->ˊ([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lo/st;->ˊ([Ljava/security/cert/X509Certificate;)V

    .line 162
    iget-object v0, p0, Lo/st;->Ym:Ljava/util/Set;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method
