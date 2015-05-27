.class public Lorg/spongycastle/asn1/pkcs/CertificationRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field protected apW:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

.field protected apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field protected apY:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apW:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apY:Lorg/spongycastle/asn1/DERBitString;

    .line 45
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 83
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apW:Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apX:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->apY:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
