.class public final Lcom/squareup/okhttp/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionSpec;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iget-boolean v0, p1, Lcom/squareup/okhttp/ConnectionSpec;->tls:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    .line 228
    # getter for: Lcom/squareup/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec;->access$400(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 229
    # getter for: Lcom/squareup/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/ConnectionSpec;->access$500(Lcom/squareup/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 230
    iget-boolean v0, p1, Lcom/squareup/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 231
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-boolean p1, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/ConnectionSpec$Builder;)Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/squareup/okhttp/ConnectionSpec;
    .locals 2

    .line 290
    new-instance v0, Lcom/squareup/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/ConnectionSpec;-><init>(Lcom/squareup/okhttp/ConnectionSpec$Builder;Lcom/squareup/okhttp/ConnectionSpec$1;)V

    return-object v0
.end method

.method public varargs cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .locals 4

    .line 234
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 238
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 239
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/squareup/okhttp/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iput-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 255
    :goto_0
    return-object p0
.end method

.method public supportsTlsExtensions(Z)Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .locals 2

    .line 284
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iput-boolean p1, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 286
    return-object p0
.end method

.method public varargs tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .locals 4

    .line 259
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 263
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_1

    .line 264
    aget-object v0, p1, v3

    iget-object v0, v0, Lcom/squareup/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    iput-object v2, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lcom/squareup/okhttp/ConnectionSpec$Builder;
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    if-nez p1, :cond_1

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 280
    :goto_0
    return-object p0
.end method
