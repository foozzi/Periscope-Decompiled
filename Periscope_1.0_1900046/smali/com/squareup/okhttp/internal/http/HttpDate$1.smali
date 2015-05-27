.class final Lcom/squareup/okhttp/internal/http/HttpDate$1;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<Ljava/text/DateFormat;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpDate$1;->initialValue()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 3

    .line 41
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 43
    # getter for: Lcom/squareup/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;
    invoke-static {}, Lcom/squareup/okhttp/internal/http/HttpDate;->access$000()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 44
    return-object v2
.end method
