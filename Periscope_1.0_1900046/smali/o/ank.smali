.class public abstract Lo/ank;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˋ(Ljava/lang/String;Ljava/lang/String;Z)Lo/ank;
    .locals 1

    .line 8
    new-instance v0, Lo/and;

    invoke-direct {v0, p0, p1, p2}, Lo/and;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method abstract Ca()Ljava/lang/String;
.end method

.method abstract Cb()Ljava/lang/String;
.end method

.method abstract Cc()Z
.end method
