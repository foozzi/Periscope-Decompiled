.class public Lo/sn$ˎ;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ce"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 588
    return-void
.end method


# virtual methods
.method public dF()Ljava/io/IOException;
    .locals 1

    .line 597
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lo/sn$ˎ;->dF()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
