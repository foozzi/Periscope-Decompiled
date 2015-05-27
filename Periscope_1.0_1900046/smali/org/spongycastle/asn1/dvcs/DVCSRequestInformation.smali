.class public Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ahV:Lorg/spongycastle/asn1/x509/Extensions;

.field private aig:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field private aih:Ljava/math/BigInteger;

.field private aii:Lorg/spongycastle/asn1/dvcs/DVCSTime;

.field private aij:Lorg/spongycastle/asn1/x509/GeneralNames;

.field private aik:Lorg/spongycastle/asn1/x509/PolicyInformation;

.field private ail:Lorg/spongycastle/asn1/x509/GeneralNames;

.field private aim:Lorg/spongycastle/asn1/x509/GeneralNames;

.field private version:I


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 9

    .line 139
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 141
    iget v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 143
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aig:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aih:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aih:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aii:Lorg/spongycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aii:Lorg/spongycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_2
    const/4 v0, 0x5

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 162
    const/4 v0, 0x5

    new-array v5, v0, [Lorg/spongycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aij:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aik:Lorg/spongycastle/asn1/x509/PolicyInformation;

    const/4 v1, 0x1

    aput-object v0, v5, v1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ail:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v1, 0x2

    aput-object v0, v5, v1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aim:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v1, 0x3

    aput-object v0, v5, v1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v1, 0x4

    aput-object v0, v5, v1

    .line 169
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-ge v6, v0, :cond_4

    .line 171
    aget v7, v4, v6

    .line 172
    aget-object v8, v5, v6

    .line 173
    if-eqz v8, :cond_3

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v7, v8}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    const-string v0, "DVCSRequestInformation {\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aig:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aih:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nonce: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aih:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aii:Lorg/spongycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aii:Lorg/spongycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aij:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requester: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aij:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aik:Lorg/spongycastle/asn1/x509/PolicyInformation;

    if-eqz v0, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aik:Lorg/spongycastle/asn1/x509/PolicyInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ail:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dvcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ail:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aim:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_6

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataLocations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->aim:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_7

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSRequestInformation;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_7
    const-string v0, "}\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
