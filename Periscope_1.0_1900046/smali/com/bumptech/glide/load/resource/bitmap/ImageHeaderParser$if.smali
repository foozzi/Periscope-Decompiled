.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final ko:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 306
    return-void
.end method


# virtual methods
.method public length()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public ˊ(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 310
    return-void
.end method

.method public ᒾ(I)I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public ᓪ(I)S
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
