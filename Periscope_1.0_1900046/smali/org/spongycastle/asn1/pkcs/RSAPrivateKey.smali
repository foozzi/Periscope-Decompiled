.class public Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ajI:Ljava/math/BigInteger;

.field private asQ:Ljava/math/BigInteger;

.field private asR:Ljava/math/BigInteger;

.field private asS:Ljava/math/BigInteger;

.field private asT:Ljava/math/BigInteger;

.field private asU:Ljava/math/BigInteger;

.field private asV:Ljava/math/BigInteger;

.field private asW:Ljava/math/BigInteger;

.field private asX:Ljava/math/BigInteger;

.field private asY:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asQ:Ljava/math/BigInteger;

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ajI:Ljava/math/BigInteger;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asR:Ljava/math/BigInteger;

    .line 64
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asS:Ljava/math/BigInteger;

    .line 65
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asT:Ljava/math/BigInteger;

    .line 66
    iput-object p5, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asU:Ljava/math/BigInteger;

    .line 67
    iput-object p6, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asV:Ljava/math/BigInteger;

    .line 68
    iput-object p7, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asW:Ljava/math/BigInteger;

    .line 69
    iput-object p8, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asX:Ljava/math/BigInteger;

    .line 70
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong version for RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asQ:Ljava/math/BigInteger;

    .line 84
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ajI:Ljava/math/BigInteger;

    .line 85
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asR:Ljava/math/BigInteger;

    .line 86
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asS:Ljava/math/BigInteger;

    .line 87
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asT:Ljava/math/BigInteger;

    .line 88
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asU:Ljava/math/BigInteger;

    .line 89
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asV:Ljava/math/BigInteger;

    .line 90
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asW:Ljava/math/BigInteger;

    .line 91
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asX:Ljava/math/BigInteger;

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 97
    :cond_1
    return-void
.end method

.method public static ﺑ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
    .locals 2

    .line 38
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    return-object v0

    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 168
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 170
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asQ:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 174
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ge()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->gf()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->gg()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->gh()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->gi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asY:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 185
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ge()Ljava/math/BigInteger;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asT:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asS:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asR:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gf()Ljava/math/BigInteger;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gg()Ljava/math/BigInteger;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asV:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gh()Ljava/math/BigInteger;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asW:Ljava/math/BigInteger;

    return-object v0
.end method

.method public gi()Ljava/math/BigInteger;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->asX:Ljava/math/BigInteger;

    return-object v0
.end method
