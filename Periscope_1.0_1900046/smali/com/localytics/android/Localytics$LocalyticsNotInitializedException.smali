.class public final Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalyticsNotInitializedException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1785
    const-string v0, "You must first initialize Localytics"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/Localytics$1;)V
    .locals 0

    .line 1781
    invoke-direct {p0}, Lcom/localytics/android/Localytics$LocalyticsNotInitializedException;-><init>()V

    return-void
.end method
