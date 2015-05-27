.class public final Lorg/spongycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aTQ:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final aTR:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final aTS:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final aTU:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final aTV:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "SSL 3.0"

    const/16 v2, 0x300

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTQ:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 10
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.0"

    const/16 v2, 0x301

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTR:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 11
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.1"

    const/16 v2, 0x302

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTS:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 12
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "TLS 1.2"

    const/16 v2, 0x303

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 13
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "DTLS 1.0"

    const v2, 0xfeff

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTU:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 14
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const-string v1, "DTLS 1.2"

    const v2, 0xfefd

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTV:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private static ˏ(IILjava/lang/String;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 5

    .line 151
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴰ(I)V

    .line 152
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᴰ(I)V

    .line 154
    shl-int/lit8 v0, p0, 0x8

    or-int v3, v0, p1

    .line 155
    const/high16 v0, 0x10000

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static ᔊ(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2

    .line 106
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_2

    .line 110
    :sswitch_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTQ:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 115
    :pswitch_1
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTR:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 117
    :pswitch_2
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTS:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 119
    :pswitch_3
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 121
    :goto_0
    const-string v0, "TLS"

    invoke-static {p0, p1, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(IILjava/lang/String;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0

    .line 125
    :sswitch_1
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 128
    :pswitch_4
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTU:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 130
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 132
    :pswitch_6
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTV:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 134
    :goto_1
    const-string v0, "DTLS"

    invoke-static {p0, p1, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(IILjava/lang/String;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0

    .line 138
    :goto_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xfe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 90
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ᐝ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMajorVersion()I
    .locals 2

    .line 32
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 2

    .line 37
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public mo()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mp()Z
    .locals 1

    .line 47
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTQ:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mq()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTU:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-ne p0, v0, :cond_1

    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTS:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->aTT:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 3

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    sub-int v2, v0, v1

    .line 75
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mo()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gtz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-ltz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᐝ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2

    .line 95
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    iget v1, p1, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
