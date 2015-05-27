.class public Lorg/spongycastle/asn1/x509/qualified/BiometricData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aCl:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

.field private aCm:Lorg/spongycastle/asn1/ASN1OctetString;

.field private aCn:Lorg/spongycastle/asn1/DERIA5String;

.field private akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 110
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->aCl:Lorg/spongycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->aCm:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->aCn:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/BiometricData;->aCn:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
