.class public Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agu:Lorg/spongycastle/asn1/ASN1Sequence;

.field private ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

.field private azE:Z

.field private azF:Z

.field private azG:Lorg/spongycastle/asn1/x509/ReasonFlags;

.field private azH:Z

.field private azI:Z


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 147
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 149
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 155
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/DistributionPointName;->ˉ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    .line 156
    goto :goto_2

    .line 158
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ˊ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azE:Z

    .line 159
    goto :goto_2

    .line 161
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ˊ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azF:Z

    .line 162
    goto :goto_2

    .line 164
    :pswitch_3
    new-instance v0, Lorg/spongycastle/asn1/x509/ReasonFlags;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/x509/ReasonFlags;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/ReasonFlags;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azG:Lorg/spongycastle/asn1/x509/ReasonFlags;

    .line 165
    goto :goto_2

    .line 167
    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ˊ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azH:Z

    .line 168
    goto :goto_2

    .line 170
    :pswitch_5
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ˊ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->ew()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azI:Z

    .line 171
    goto :goto_2

    .line 173
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 177
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static ɹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    .locals 2

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 258
    const-string v1, "    "

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    return-void
.end method

.method private ᵞ(Z)Ljava/lang/String;
    .locals 1

    .line 272
    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public hF()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azE:Z

    return v0
.end method

.method public hG()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azF:Z

    return v0
.end method

.method public hH()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azH:Z

    return v0
.end method

.method public hI()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azI:Z

    return v0
.end method

.method public hJ()Lorg/spongycastle/asn1/x509/ReasonFlags;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azG:Lorg/spongycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public ht()Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 222
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    const-string v0, "IssuingDistributionPoint: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "distributionPoint"

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azE:Z

    if-eqz v0, :cond_1

    .line 233
    const-string v0, "onlyContainsUserCerts"

    iget-boolean v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azE:Z

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ᵞ(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azF:Z

    if-eqz v0, :cond_2

    .line 237
    const-string v0, "onlyContainsCACerts"

    iget-boolean v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azF:Z

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ᵞ(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azG:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v0, :cond_3

    .line 241
    const-string v0, "onlySomeReasons"

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azG:Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azI:Z

    if-eqz v0, :cond_4

    .line 245
    const-string v0, "onlyContainsAttributeCerts"

    iget-boolean v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azI:Z

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ᵞ(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_4
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azH:Z

    if-eqz v0, :cond_5

    .line 249
    const-string v0, "indirectCRL"

    iget-boolean v1, p0, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->azH:Z

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ᵞ(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_5
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
