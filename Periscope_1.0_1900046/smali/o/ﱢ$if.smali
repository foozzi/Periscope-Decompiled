.class Lo/ﱢ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﱢ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Ljava/io/InputStream;Ljava/io/File;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ﱢ$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/ﱢ$if;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, ""

    return-object v0
.end method

.method public ˊ(Ljava/io/InputStream;II)Lo/ڔ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/InputStream;II)Lo/\u0694<Ljava/io/File;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/Error;

    const-string v1, "You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﱢ$if;->ˊ(Ljava/io/InputStream;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
