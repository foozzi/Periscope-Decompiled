.class public Lorg/spongycastle/asn1/dvcs/PathProcInput;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ais:[Lorg/spongycastle/asn1/x509/PolicyInformation;

.field private ait:Z

.field private aiu:Z

.field private aiv:Z


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .line 110
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 111
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ais:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v0, v0

    if-eq v6, v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ais:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ait:Z

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ait:Z

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiu:Z

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v2, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiu:Z

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiv:Z

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Boolean;

    iget-boolean v2, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiv:Z

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ais:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->ait:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "explicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->aiv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
