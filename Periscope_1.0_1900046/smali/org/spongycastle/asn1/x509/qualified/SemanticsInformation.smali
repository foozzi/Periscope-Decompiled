.class public Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aCx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aCy:[Lorg/spongycastle/asn1/x509/GeneralName;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 113
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->aCx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->aCx:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->aCy:[Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_2

    .line 121
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->aCy:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/SemanticsInformation;->aCy:[Lorg/spongycastle/asn1/x509/GeneralName;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
