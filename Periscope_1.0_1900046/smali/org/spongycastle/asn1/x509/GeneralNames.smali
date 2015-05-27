.class public Lorg/spongycastle/asn1/x509/GeneralNames;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private final azr:[Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 66
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralName;->ﻳ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    aput-object v1, v0, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    .line 52
    return-void
.end method

.method public static ˍ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 35
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method

.method public static ＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 2

    .line 18
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    .line 20
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object v0

    .line 23
    :cond_0
    if-eqz p0, :cond_1

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public hB()[Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 5

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v0, v0

    new-array v4, v0, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v0, "GeneralNames:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    array-length v0, v0

    if-eq v3, v0, :cond_0

    .line 102
    const-string v0, "    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;->azr:[Lorg/spongycastle/asn1/x509/GeneralName;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
