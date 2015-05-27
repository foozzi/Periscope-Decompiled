.class public Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/KeyParser;


# instance fields
.field private aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 19
    return-void
.end method


# virtual methods
.method public ʿ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 5

    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 28
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sender\'s public key invalid."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 36
    goto :goto_1

    .line 41
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 42
    goto :goto_1

    .line 45
    :goto_0
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sender\'s public key has invalid point encoding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :goto_1
    int-to-byte v0, v4

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 49
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECCurve;->ᕁ([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;->aQL:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
