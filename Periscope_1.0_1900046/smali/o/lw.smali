.class public abstract Lo/lw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nn;


# instance fields
.field protected final PR:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/lw;->PR:J

    .line 18
    return-void
.end method
