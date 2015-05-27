.class public Lorg/spongycastle/asn1/ASN1UTCTime;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""


# instance fields
.field private aam:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    .line 155
    return-void
.end method


# virtual methods
.method public eB()Ljava/lang/String;
    .locals 6

    .line 207
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v3

    .line 212
    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00GMT+00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GMT+00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 226
    if-gez v4, :cond_2

    .line 228
    const/16 v0, 0x2b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 230
    :cond_2
    move-object v5, v3

    .line 232
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne v4, v0, :cond_3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    :cond_3
    const/16 v0, 0xa

    if-ne v4, v0, :cond_4

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0xd

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    const/16 v2, 0xf

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xf

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    const/16 v2, 0x11

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eZ()Ljava/util/Date;
    .locals 4

    .line 182
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmssz"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "Z"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1UTCTime;->fa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method ex()Z
    .locals 1

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 3

    .line 273
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    array-length v2, v0

    .line 275
    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    return v0
.end method

.method public fa()Ljava/lang/String;
    .locals 3

    .line 254
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1UTCTime;->eB()Ljava/lang/String;

    move-result-object v2

    .line 256
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-ge v0, v1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3

    .line 282
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 284
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    array-length v1, v0

    .line 286
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->Ί(I)V

    .line 288
    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    aget-byte v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2

    .line 297
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/asn1/ASN1UTCTime;

    iget-object v1, v1, Lorg/spongycastle/asn1/ASN1UTCTime;->aam:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
