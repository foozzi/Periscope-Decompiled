.class public Lorg/spongycastle/asn1/x509/DistributionPoint;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

.field ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

.field ayF:Lorg/spongycastle/asn1/x509/GeneralNames;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 57
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 61
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/DistributionPointName;->ˉ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    .line 62
    goto :goto_1

    .line 64
    :pswitch_1
    new-instance v0, Lorg/spongycastle/asn1/x509/ReasonFlags;

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lorg/spongycastle/asn1/DERBitString;->ʽ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/ReasonFlags;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    .line 65
    goto :goto_1

    .line 67
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->ˍ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    .line 78
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    .line 79
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 80
    return-void
.end method

.method private ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 147
    const-string v1, "    "

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method

.method public static ﯩ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DistributionPoint;
    .locals 3

    .line 39
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/DistributionPoint;

    return-object v0

    .line 44
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/x509/DistributionPoint;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 99
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ht()Lorg/spongycastle/asn1/x509/DistributionPointName;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public hu()Lorg/spongycastle/asn1/x509/ReasonFlags;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public hv()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 124
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    const-string v0, "DistributionPoint: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "distributionPoint"

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayD:Lorg/spongycastle/asn1/x509/DistributionPointName;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "reasons"

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayE:Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 138
    const-string v0, "cRLIssuer"

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DistributionPoint;->ayF:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->ˊ(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
