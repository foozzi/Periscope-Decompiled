.class final Lcom/squareup/okhttp/internal/http/HttpEngine$1;
.super Lcom/squareup/okhttp/ResponseBody;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lo/ui;
    .locals 1

    .line 110
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    return-object v0
.end method
