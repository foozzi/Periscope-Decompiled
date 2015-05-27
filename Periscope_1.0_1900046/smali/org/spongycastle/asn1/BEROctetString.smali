.class public Lorg/spongycastle/asn1/BEROctetString;
.super Lorg/spongycastle/asn1/ASN1OctetString;
.source ""


# instance fields
.field private aaM:[Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 1

    .line 56
    invoke-static {p1}, Lorg/spongycastle/asn1/BEROctetString;->ˊ([Lorg/spongycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/asn1/BEROctetString;->aaM:[Lorg/spongycastle/asn1/ASN1OctetString;

    .line 59
    return-void
.end method

.method private fb()Ljava/util/Vector;
    .locals 7

    .line 94
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 95
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aas:[B

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 99
    add-int/lit16 v0, v4, 0x3e8

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetString;->aas:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aas:[B

    array-length v5, v0

    goto :goto_1

    .line 105
    :cond_0
    add-int/lit16 v5, v4, 0x3e8

    .line 108
    :goto_1
    sub-int v0, v5, v4

    new-array v6, v0, [B

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aas:[B

    array-length v1, v6

    const/4 v2, 0x0

    invoke-static {v0, v4, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    add-int/lit16 v4, v4, 0x3e8

    goto :goto_0

    .line 115
    :cond_1
    return-object v3
.end method

.method static ˊ(Lorg/spongycastle/asn1/ASN1Sequence;)Lorg/spongycastle/asn1/BEROctetString;
    .locals 5

    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/spongycastle/asn1/ASN1OctetString;

    .line 158
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 159
    const/4 v4, 0x0

    .line 161
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    aput-object v1, v2, v0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/BEROctetString;-><init>([Lorg/spongycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method private static ˊ([Lorg/spongycastle/asn1/ASN1OctetString;)[B
    .locals 6

    .line 21
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    const/4 v4, 0x0

    :goto_0
    array-length v0, p0

    if-eq v4, v0, :cond_0

    .line 27
    :try_start_0
    aget-object v0, p0, v4

    check-cast v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object v5, v0

    .line 29
    invoke-virtual {v5}, Lorg/spongycastle/asn1/DEROctetString;->eM()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    goto :goto_1

    .line 31
    :catch_0
    move-exception v5

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found in input should only contain DEROctetString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :catch_1
    move-exception v5

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception converting octets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lorg/spongycastle/asn1/BEROctetString;)[Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aaM:[Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method


# virtual methods
.method public eM()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aas:[B

    return-object v0
.end method

.method public eT()Ljava/util/Enumeration;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetString;->aaM:[Lorg/spongycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/BEROctetString;->fb()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/BEROctetString$1;-><init>(Lorg/spongycastle/asn1/BEROctetString;)V

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method ey()I
    .locals 4

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BEROctetString;->eT()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ey()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 132
    :cond_0
    add-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 139
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 141
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BEROctetString;->eT()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˋ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 151
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 153
    return-void
.end method
