.class public final Lo/ʡ;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public final qJ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʡ;->qJ:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʡ;->qJ:Z

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 48
    iput-boolean p2, p0, Lo/ʡ;->qJ:Z

    .line 49
    return-void
.end method
