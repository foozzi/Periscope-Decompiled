.class public Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aVk:Ljava/lang/Integer;

.field public static final aVl:Ljava/lang/Integer;

.field public static final aVm:Ljava/lang/Integer;

.field public static final aVn:Ljava/lang/Integer;

.field public static final aVo:Ljava/lang/Integer;

.field public static final aVp:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0x16

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVk:Ljava/lang/Integer;

    .line 13
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVl:Ljava/lang/Integer;

    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVm:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVn:Ljava/lang/Integer;

    .line 16
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVo:Ljava/lang/Integer;

    .line 17
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVp:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ɩ([B)Z
    .locals 1

    .line 186
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ﹾ([B)Z

    move-result v0

    return v0
.end method

.method public static ʵ([B)S
    .locals 3

    .line 209
    if-nez p0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 216
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-short v2, v0

    .line 221
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/MaxFragmentLength;->ᐝ(S)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 226
    :cond_2
    return v2
.end method

.method public static ʸ([B)Z
    .locals 1

    .line 265
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ﹾ([B)Z

    move-result v0

    return v0
.end method

.method public static ˉ(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 1

    .line 21
    if-nez p0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static ˌ(Ljava/util/Hashtable;)S
    .locals 2

    .line 68
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVm:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ʵ([B)S

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˍ(Ljava/util/Hashtable;)Z
    .locals 2

    .line 88
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVk:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 89
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ɩ([B)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static ˑ(Ljava/util/Hashtable;)Z
    .locals 2

    .line 94
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVp:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ʸ([B)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static ﹾ([B)Z
    .locals 2

    .line 171
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
