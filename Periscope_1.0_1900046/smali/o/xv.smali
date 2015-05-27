.class final Lo/xv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .line 33
    const-string v0, "User-Agent"

    const-string v1, "tv.periscope.android/1.0 (1900046)"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
