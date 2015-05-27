.class Lo/mc;
.super Lretrofit/client/UrlConnectionClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PW:Lo/ma;


# direct methods
.method constructor <init>(Lo/ma;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/mc;->PW:Lo/ma;

    invoke-direct {p0}, Lretrofit/client/UrlConnectionClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 40
    iget-object v0, p0, Lo/mc;->PW:Lo/ma;

    invoke-super {p0, p1}, Lretrofit/client/UrlConnectionClient;->openConnection(Lretrofit/client/Request;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ma;->ˎ(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
