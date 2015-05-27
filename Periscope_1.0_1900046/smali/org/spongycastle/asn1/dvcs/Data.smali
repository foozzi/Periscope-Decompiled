.class public Lorg/spongycastle/asn1/dvcs/Data;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private ahP:Lorg/spongycastle/asn1/x509/DigestInfo;

.field private ahU:Lorg/spongycastle/asn1/ASN1Sequence;

.field private air:Lorg/spongycastle/asn1/ASN1OctetString;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->air:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->air:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahP:Lorg/spongycastle/asn1/x509/DigestInfo;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahP:Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/DigestInfo;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->air:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/Data;->air:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahP:Lorg/spongycastle/asn1/x509/DigestInfo;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahP:Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/Data;->ahU:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
