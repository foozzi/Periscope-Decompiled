.class public final Lcom/squareup/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field public static final CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field final supportsTlsExtensions:Z

.field final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 33
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_1:Lcom/squareup/okhttp/TlsVersion;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 56
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    .line 61
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 62
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    .line 67
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    # getter for: Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$000(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    .line 84
    # getter for: Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$100(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 85
    # getter for: Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$200(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 86
    # getter for: Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->access$300(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;Lcom/squareup/okhttp/ConnectionSpec$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/ConnectionSpec;-><init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/ConnectionSpec;
    .locals 5

    .line 162
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 165
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 166
    invoke-static {v0, v1, v3}, Lcom/squareup/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 170
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/squareup/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 171
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;-><init>(Lcom/squareup/okhttp/ConnectionSpec;)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/squareup/okhttp/ConnectionSpec$Builder;->build()Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Route;)V
    .locals 9

    .line 122
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v3

    .line 124
    iget-object v0, v3, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 126
    iget-object v4, v3, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 127
    iget-boolean v0, p2, Lcom/squareup/okhttp/Route;->shouldSendTlsFallbackIndicator:Z

    if-eqz v0, :cond_1

    .line 130
    const-string v5, "TLS_FALLBACK_SCSV"

    .line 131
    .line 132
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 134
    if-eqz v6, :cond_1

    .line 136
    if-eqz v4, :cond_0

    move-object v7, v4

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v7

    .line 139
    :goto_0
    array-length v0, v7

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 140
    array-length v0, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v7, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    const-string v1, "TLS_FALLBACK_SCSV"

    aput-object v1, v8, v0

    .line 143
    move-object v4, v8

    .line 147
    :cond_1
    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p1, v4}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v5

    .line 152
    iget-boolean v0, v3, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p2, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v0, v0, Lcom/squareup/okhttp/Address;->uriHost:Ljava/lang/String;

    iget-object v1, p2, Lcom/squareup/okhttp/Route;->address:Lcom/squareup/okhttp/Address;

    iget-object v1, v1, Lcom/squareup/okhttp/Address;->protocols:Ljava/util/List;

    invoke-virtual {v5, p1, v0, v1}, Lcom/squareup/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 155
    :cond_3
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/squareup/okhttp/CipherSuite;

    .line 102
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v0

    aput-object v0, v1, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 178
    instance-of v0, p1, Lcom/squareup/okhttp/ConnectionSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 181
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/squareup/okhttp/ConnectionSpec;

    move-object v2, v0

    .line 182
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v1, v2, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_2
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v1, v2, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return v0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v1, v2, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 187
    :cond_4
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v1, v2, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 194
    const/16 v2, 0x11

    .line 195
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v2, v0, 0x20f

    .line 197
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int v2, v0, v1

    .line 198
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int v2, v0, v1

    .line 200
    :cond_1
    return v2
.end method

.method public isTls()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/squareup/okhttp/TlsVersion;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/squareup/okhttp/TlsVersion;

    .line 110
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v0

    aput-object v0, v1, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 204
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v2

    .line 206
    if-nez v2, :cond_0

    const-string v3, "[use default]"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    const-string v0, "ConnectionSpec()"

    return-object v0
.end method
