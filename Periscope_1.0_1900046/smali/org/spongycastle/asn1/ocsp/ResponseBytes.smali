.class public Lorg/spongycastle/asn1/ocsp/ResponseBytes;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field apj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field apk:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->apj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->apk:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 31
    return-void
.end method

.method public static ᒻ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    .locals 3

    .line 43
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    return-object v0

    .line 47
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ι(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    .locals 1

    .line 37
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->ᒻ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 75
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->apj:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->apk:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
