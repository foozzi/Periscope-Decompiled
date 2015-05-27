.class public Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ahD:Lorg/spongycastle/asn1/ASN1OctetString;

.field private ahE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 55
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    return-void
.end method

.method public static ˢ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;
    .locals 2

    .line 33
    instance-of v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    return-object v0

    .line 38
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 71
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fp()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GOST28147Parameters;->ahD:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0
.end method
