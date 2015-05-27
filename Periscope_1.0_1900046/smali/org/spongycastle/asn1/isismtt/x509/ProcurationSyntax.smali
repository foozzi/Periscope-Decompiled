.class public Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private Sg:Ljava/lang/String;

.field private amV:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private amW:Lorg/spongycastle/asn1/x509/GeneralName;

.field private amX:Lorg/spongycastle/asn1/x509/IssuerSerial;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 217
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 218
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->Sg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->Sg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->amV:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->amV:Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->amW:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->amW:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 232
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->amX:Lorg/spongycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
