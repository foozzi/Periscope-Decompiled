.class Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private aaP:[B

.field private aaQ:I

.field private aaR:Lorg/spongycastle/asn1/DEROutputStream;

.field final synthetic aaS:Lorg/spongycastle/asn1/BEROctetStringGenerator;


# virtual methods
.method public close()V
    .locals 5

    .line 91
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    new-array v4, v0, [B

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaR:Lorg/spongycastle/asn1/DEROutputStream;

    invoke-static {v0, v4}, Lorg/spongycastle/asn1/DEROctetString;->ˊ(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaS:Lorg/spongycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetStringGenerator;->fc()V

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 60
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaR:Lorg/spongycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;->ˊ(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    .line 65
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 69
    :goto_0
    if-lez p3, :cond_1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    iget v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    .line 75
    iget v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 77
    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaR:Lorg/spongycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaP:[B

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;->ˊ(Lorg/spongycastle/asn1/DEROutputStream;[B)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->aaQ:I

    .line 83
    add-int/2addr p2, v2

    .line 84
    sub-int/2addr p3, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    return-void
.end method
