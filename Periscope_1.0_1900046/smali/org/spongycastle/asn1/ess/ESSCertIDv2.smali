.class public Lorg/spongycastle/asn1/ess/ESSCertIDv2;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final alb:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private ala:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aob:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->alb:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 138
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->alb:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->ala:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/ess/ESSCertIDv2;->akZ:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
