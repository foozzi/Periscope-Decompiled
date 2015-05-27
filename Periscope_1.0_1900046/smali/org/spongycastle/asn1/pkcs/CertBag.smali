.class public Lorg/spongycastle/asn1/pkcs/CertBag;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private apU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private apV:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apV:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 45
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERTaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apV:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 23
    return-void
.end method

.method public static ᔊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertBag;
    .locals 2

    .line 27
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/CertBag;

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/pkcs/CertBag;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 59
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apV:Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fD()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public fE()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertBag;->apV:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method
