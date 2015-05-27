.class public Lorg/spongycastle/util/encoders/Base64;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bkd:Lorg/spongycastle/util/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/spongycastle/util/encoders/Base64Encoder;

    invoke-direct {v0}, Lorg/spongycastle/util/encoders/Base64Encoder;-><init>()V

    sput-object v0, Lorg/spongycastle/util/encoders/Base64;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ײ([B)[B
    .locals 2

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/encoders/Base64;->ᑊ([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static ᑊ([BII)[B
    .locals 6

    .line 52
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v3, v0, 0x4

    .line 53
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 57
    :try_start_0
    sget-object v0, Lorg/spongycastle/util/encoders/Base64;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, v4}, Lorg/spongycastle/util/encoders/Encoder;->ˊ([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v5

    .line 61
    new-instance v0, Lorg/spongycastle/util/encoders/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception encoding base64 string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/util/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 64
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static ᵥ(Ljava/lang/String;)[B
    .locals 6

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v3, v0, 0x3

    .line 127
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 131
    :try_start_0
    sget-object v0, Lorg/spongycastle/util/encoders/Base64;->bkd:Lorg/spongycastle/util/encoders/Encoder;

    invoke-interface {v0, p0, v4}, Lorg/spongycastle/util/encoders/Encoder;->ˊ(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 133
    :catch_0
    move-exception v5

    .line 135
    new-instance v0, Lorg/spongycastle/util/encoders/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to decode base64 string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lorg/spongycastle/util/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 138
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
