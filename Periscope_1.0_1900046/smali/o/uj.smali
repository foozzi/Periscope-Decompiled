.class public Lo/uj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ZI:[C

.field public static final ZJ:Lo/uj;


# instance fields
.field transient ZK:Ljava/lang/String;

.field final fw:[B

.field transient hY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lo/uj;->ZI:[C

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    sput-object v0, Lo/uj;->ZJ:Lo/uj;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/uj;->fw:[B

    .line 58
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    .line 347
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 348
    invoke-static {p1, v2}, Lo/uj;->ˋ(Ljava/io/InputStream;I)Lo/uj;

    move-result-object v3

    .line 350
    :try_start_0
    const-class v0, Lo/uj;

    const-string v1, "fw"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 351
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 352
    iget-object v0, v3, Lo/uj;->fw:[B

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 357
    goto :goto_0

    .line 353
    :catch_0
    move-exception v4

    .line 354
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 355
    :catch_1
    move-exception v4

    .line 356
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 362
    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 363
    return-void
.end method

.method public static ˋ(Ljava/io/InputStream;I)Lo/uj;
    .locals 6

    .line 180
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    new-array v3, p1, [B

    .line 184
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    .line 185
    sub-int v0, p1, v4

    invoke-virtual {p0, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 186
    const/4 v0, -0x1

    if-ne v5, v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 184
    :cond_2
    add-int/2addr v4, v5

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Lo/uj;

    invoke-direct {v0, v3}, Lo/uj;-><init>([B)V

    return-object v0
.end method

.method public static varargs ᐨ([B)Lo/uj;
    .locals 2

    .line 64
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lo/uj;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lo/uj;-><init>([B)V

    return-object v0
.end method

.method public static ﺗ(Ljava/lang/String;)Lo/uj;
    .locals 3

    .line 83
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    new-instance v2, Lo/uj;

    sget-object v0, Lo/vd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Lo/uj;-><init>([B)V

    .line 85
    iput-object p0, v2, Lo/uj;->ZK:Ljava/lang/String;

    .line 86
    return-object v2
.end method

.method private ﻳ(Ljava/lang/String;)Lo/uj;
    .locals 3

    .line 117
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lo/uj;->fw:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lo/uj;->ᐨ([B)Lo/uj;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static ＿(Ljava/lang/String;)Lo/uj;
    .locals 3

    .line 136
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-static {p0}, Lo/ud;->ᵥ(Ljava/lang/String;)[B

    move-result-object v2

    .line 138
    if-eqz v2, :cond_1

    new-instance v0, Lo/uj;

    invoke-direct {v0, v2}, Lo/uj;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public ei()Ljava/lang/String;
    .locals 4

    .line 91
    iget-object v3, p0, Lo/uj;->ZK:Ljava/lang/String;

    .line 93
    if-eqz v3, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/uj;->fw:[B

    sget-object v2, Lo/vd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lo/uj;->ZK:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public ej()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-static {v0}, Lo/ud;->ˑ([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ek()Lo/uj;
    .locals 1

    .line 107
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lo/uj;->ﻳ(Ljava/lang/String;)Lo/uj;

    move-result-object v0

    return-object v0
.end method

.method public el()Ljava/lang/String;
    .locals 10

    .line 143
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [C

    .line 144
    const/4 v5, 0x0

    .line 145
    iget-object v6, p0, Lo/uj;->fw:[B

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-byte v9, v6, v8

    .line 146
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    sget-object v1, Lo/uj;->ZI:[C

    shr-int/lit8 v2, v9, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, v4, v0

    .line 147
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    sget-object v1, Lo/uj;->ZI:[C

    and-int/lit8 v2, v9, 0xf

    aget-char v1, v1, v2

    aput-char v1, v4, v0

    .line 145
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public em()Lo/uj;
    .locals 5

    .line 198
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    if-ge v2, v0, :cond_5

    .line 199
    iget-object v0, p0, Lo/uj;->fw:[B

    aget-byte v3, v0, v2

    .line 200
    const/16 v0, 0x41

    if-lt v3, v0, :cond_4

    const/16 v0, 0x5a

    if-le v3, v0, :cond_0

    goto :goto_3

    .line 204
    :cond_0
    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v4, v0

    .line 205
    move v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v3, 0x20

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 206
    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_3

    .line 207
    aget-byte v3, v4, v2

    .line 208
    const/16 v0, 0x41

    if-lt v3, v0, :cond_2

    const/16 v0, 0x5a

    if-le v3, v0, :cond_1

    goto :goto_2

    .line 209
    :cond_1
    add-int/lit8 v0, v3, 0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 206
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_3
    new-instance v0, Lo/uj;

    invoke-direct {v0, v4}, Lo/uj;-><init>([B)V

    return-object v0

    .line 198
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_5
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 323
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 324
    :cond_0
    instance-of v0, p1, Lo/uj;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/uj;

    invoke-virtual {v0}, Lo/uj;->size()I

    move-result v0

    iget-object v1, p0, Lo/uj;->fw:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lo/uj;

    iget-object v1, p0, Lo/uj;->fw:[B

    iget-object v2, p0, Lo/uj;->fw:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lo/uj;->ˎ(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 1

    .line 274
    iget-object v0, p0, Lo/uj;->fw:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 330
    iget v1, p0, Lo/uj;->hY:I

    .line 331
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lo/uj;->hY:I

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 281
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 288
    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 335
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "ByteString[size=0]"

    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 340
    const-string v0, "ByteString[size=%s data=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/uj;->fw:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :cond_1
    const-string v0, "ByteString[size=%s md5=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/uj;->fw:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lo/uj;->ek()Lo/uj;

    move-result-object v2

    invoke-virtual {v2}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lo/ue;)V
    .locals 3

    .line 299
    iget-object v0, p0, Lo/uj;->fw:[B

    iget-object v1, p0, Lo/uj;->fw:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lo/ue;->ˉ([BII)Lo/ue;

    .line 300
    return-void
.end method

.method public ˎ(I[BII)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lo/uj;->fw:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lo/uj;->fw:[B

    invoke-static {v0, p1, p2, p3, p4}, Lo/vd;->ˊ([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
