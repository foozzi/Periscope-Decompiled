.class public Lorg/spongycastle/asn1/icao/LDSSecurityObject;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private amf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private amg:[Lorg/spongycastle/asn1/icao/DataGroupHash;

.field private amh:Lorg/spongycastle/asn1/icao/LDSVersionInfo;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 140
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->amf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->amg:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->amg:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->amh:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->amh:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
