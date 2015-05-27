.class final Lo/kk;
.super Lo/kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/kq;-><init>()V

    return-void
.end method


# virtual methods
.method protected ﯨ(Ljava/lang/String;)V
    .locals 4

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PubNub/D: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 15
    return-void
.end method

.method protected ﹴ(Ljava/lang/String;)V
    .locals 4

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PubNub/V: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 20
    return-void
.end method
