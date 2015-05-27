.class public Lorg/spongycastle/asn1/pkcs/DHParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ahx:Lorg/spongycastle/asn1/ASN1Integer;

.field apD:Lorg/spongycastle/asn1/ASN1Integer;

.field aqb:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    .line 26
    if-eqz p3, :cond_0

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    .line 34
    :goto_0
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    .line 58
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    .line 60
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    .line 68
    :goto_0
    return-void
.end method

.method public static ᕁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;
    .locals 2

    .line 39
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/DHParameter;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/pkcs/DHParameter;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/DHParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/DHParameter;->fH()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fH()Ljava/math/BigInteger;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->aqb:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->apD:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/DHParameter;->ahx:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eI()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
