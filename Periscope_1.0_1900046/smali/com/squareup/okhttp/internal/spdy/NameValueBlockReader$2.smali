.class Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->this$0:Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2

    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 69
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;->setDictionary([B)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 73
    :cond_0
    return v1
.end method
