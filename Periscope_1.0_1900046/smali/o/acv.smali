.class public Lo/acv;
.super Ljava/lang/Throwable;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lo/acv;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    return-void
.end method
