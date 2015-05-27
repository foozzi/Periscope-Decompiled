.class Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final RF:Lo/ny;

.field private final ok:Lo/qr;


# direct methods
.method constructor <init>(Lo/ny;Lo/qr;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->RF:Lo/ny;

    .line 233
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->ok:Lo/qr;

    .line 234
    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->RF:Lo/ny;

    iget-object v0, v0, Lo/ny;->As:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->RF:Lo/ny;

    iget-object v1, v1, Lo/ny;->As:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->ok:Lo/qr;

    invoke-virtual {v0}, Lo/qr;->cE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "X-Client-UUID"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;->ok:Lo/qr;

    invoke-virtual {v1}, Lo/qr;->cE()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    const-string v0, "X-Twitter-Polling"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
