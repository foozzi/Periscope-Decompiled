.class Lo/nt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ru:Lo/ns;


# direct methods
.method constructor <init>(Lo/ns;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/nt;->Ru:Lo/ns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .line 40
    const-string v0, "User-Agent"

    iget-object v1, p0, Lo/nt;->Ru:Lo/ns;

    invoke-virtual {v1}, Lo/ns;->as()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
