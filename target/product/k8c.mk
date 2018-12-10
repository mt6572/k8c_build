
PRODUCT_PACKAGES := Apppoweroff
					# Geofence \
					# TestService          



$(call inherit-product, $(SRC_TARGET_DIR)/product/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)


PRODUCT_COPY_FILES += packages/apps/App/libagora-rtc-sdk-jni.so:system/lib/libagora-rtc-sdk-jni.so \
                      packages/apps/App/libagorasdk2.so:system/lib/libagorasdk2.so \
                      packages/apps/App/libHDACEngine.so:system/lib/libHDACEngine.so

$(call inherit-product-if-exists, vendor/google/products/gms.mk)
# Overrides
PRODUCT_BRAND  := doki
PRODUCT_NAME   := $(TARGET_PRODUCT)
PRODUCT_DEVICE := $(TARGET_PRODUCT)
PRODUCT_MODEL  := doki
#PRODUCT_CUSTID  := INTEX_IRIST_V05_Indian
ifeq ($(strip $(MTK_LCA_ROM_OPTIMIZE)),yes)
PRODUCT_RUNTIMES := runtime_libdvm_default
endif

PRODUCT_PROPERTY_OVERRIDES += \
    customize.product.name=Doki \
    customize.product.cust=Doki \
    customize.product.version=V01 \
    persist.sys.timezone=Asia/Shanghai
