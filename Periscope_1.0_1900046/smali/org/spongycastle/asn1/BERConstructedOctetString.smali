.class public Lorg/spongycastle/asn1/BERConstructedOctetString;
.super Lorg/spongycastle/asn1/BEROctetString;
.source ""


# instance fields
.field private aaH:Ljava/util/Vector;


# direct methods
.method private fb()Ljava/util/Vector;
    .locals 7

    .line 108
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 109
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aas:[B

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 113
    add-int/lit16 v0, v4, 0x3e8

    iget-object v1, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aas:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aas:[B

    array-length v5, v0

    goto :goto_1

    .line 119
    :cond_0
    add-int/lit16 v5, v4, 0x3e8

    .line 122
    :goto_1
    sub-int v0, v5, v4

    new-array v6, v0, [B

    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aas:[B

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v0, v4, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    add-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 129
    :cond_1
    return-object v3
.end method


# virtual methods
.method public eM()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aas:[B

    return-object v0
.end method

.method public eT()Ljava/util/Enumeration;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aaH:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/spongycastle/asn1/BERConstructedOctetString;->fb()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERConstructedOctetString;->aaH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
